import 'package:flutter/material.dart';
import 'package:users/screens/signup/signup_page.dart';
import '../login/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Image.asset('images/welcome_logo.png',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  // 로고 이미지
                  SizedBox(height: 5), // 이미지와 버튼 사이의 간격
                  Image.asset('images/kkanbufs-logo-title.png',
                    width: 300,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // 로그인 버튼 클릭 시 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(250,50),
                    ),
                    child: Text('로그인'),
                  ),
                  SizedBox(height: 30), // 버튼들 사이의 간격
                  ElevatedButton(
                    onPressed: () {
                      // 회원가입 버튼 클릭 시 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(250,50),
                    ),
                    child: Text('회원가입'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}