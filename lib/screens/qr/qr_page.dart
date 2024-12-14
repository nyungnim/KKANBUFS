import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class QrPage extends StatefulWidget {
  final String college;
  final String department;
  final String name;
  final String studentId;

  QrPage({
    required this.college,
    required this.department,
    required this.name,
    required this.studentId,
  });

  @override
  _QRPageState createState() => _QRPageState();
}

class _QRPageState extends State<QrPage> {
  late Timer _timer;
  int _start = 30;
  String qrData = '';

  @override
  void initState() {
    super.initState();
    generateQrData();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _start = 30;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  void generateQrData() {
    DateTime now = DateTime.now().toUtc();
    DateTime expiry = now.add(Duration(seconds: _start));
    String expiryString = DateFormat('yyyy-MM-ddTHH:mm:ss').format(expiry) + 'Z';

    setState(() {
      qrData = 'college=${widget.college}&department=${widget.department}&name=${widget.name}&studentId=${widget.studentId}&expiry=$expiryString';
    });
  }

  void refreshQrCode() {
    generateQrData();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR 코드'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '제휴업체 사장님께 제한시간 내에 QR코드를 보여주세요.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            QrImageView(
              data: qrData,
              version: QrVersions.auto,
              size: 200.0,
              gapless: false,
            ),
            SizedBox(height: 20),
            Text(
              '남은 시간: $_start 초',
              style: TextStyle(fontSize: 18),
            ),
            if (_start == 0)
              ElevatedButton(
                onPressed: refreshQrCode,
                child: Text('새로고침'),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '빠르고 정확한 인식을 위해 화면 밝기를 높여주세요.',
                style: TextStyle(fontSize: 12, color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


