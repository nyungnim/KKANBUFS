import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String college;
  final String department;
  final String studentId;

  ProfilePage({
    required this.college,
    required this.department,
    required this.studentId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('프로필'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Information Block
            Card(
              margin: EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '단과대학: $college',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '학과: $department',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '학번: $studentId',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            // Settings Options
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('내 정보 수정(To be Continue!)'),
              onTap: () {
                // 내 정보 수정 페이지로 이동
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('알림 설정(To be Continue!)'),
              onTap: () {
                // 알림 설정 페이지로 이동
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.support),
              title: Text('고객 센터(To be Continue!)'),
              onTap: () {
                // 고객 센터 페이지로 이동
              },
            ),
          ],
        ),
      ),
    );
  }
}
