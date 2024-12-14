import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AffiliateDetailPage extends StatelessWidget {
  final String name;
  final String location;
  final String city;
  final String? phoneNumber;
  final String type;
  final String link;
  final String benefits;

  AffiliateDetailPage({
    required this.name,
    required this.location,
    required this.city,
    this.phoneNumber,
    required this.type,
    required this.link,
    required this.benefits,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name 상세 페이지'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name.isNotEmpty ? name : 'null',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '주소: ${location.isNotEmpty ? location : 'null'}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '도시: ${city.isNotEmpty ? city : 'null'}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '전화번호: ${phoneNumber ?? 'null'}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '업종: ${type.isNotEmpty ? type : 'null'}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '바로가기 링크:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            InkWell(
              child: Text(
                link.isNotEmpty ? link : 'null',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () async {
                if (link.isNotEmpty && await canLaunch(link)) {
                  await launch(link);
                }
              },
            ),
            SizedBox(height: 10),
            SizedBox(height: 20),
            Text(
              '제휴 혜택:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              benefits.isNotEmpty ? benefits : 'null',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


