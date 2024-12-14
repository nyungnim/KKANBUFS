import 'package:flutter/material.dart';
import 'package:users/router.dart';
import 'package:users/screens/affiliate_list/affiliate_list_page.dart';
import 'package:users/screens/welcome/welcome_page.dart';
import 'package:users/screens/login/login_page.dart';
import 'package:users/screens/signup/signup_page.dart';
import 'package:users/screens/home/home_page.dart';
import 'package:users/screens/affiliate_detail/affiliate_detail_page.dart';
import 'package:users/screens/qr/qr_page.dart';
import 'package:users/screens/profile/profile_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "YeojuCeramic",
        primarySwatch: createMaterialColor(Color(0xFFFFFF)),
      ),
      initialRoute: '/',
      routes: {
        MyRoutes.welcomePage: (context) => WelcomePage(),
        MyRoutes.loginPage: (context) => LoginPage(),
        MyRoutes.signUpPage: (context) => SignUpPage(),
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.affiliateDetailPage: (context) => AffiliateDetailPage(name: '', phoneNumber: '', location: '', city: '', type: '', link: '', benefits: ''),
        MyRoutes.profilePage: (context) => ProfilePage(
          college: '디지털미디어IT대학',
          department: '컴퓨터공학과',
          studentId: '20211234',
        ),
        MyRoutes.qrPage: (context) => QrPage(
          college: '디지털미디어IT대학',
          department: '컴퓨터공학과',
          name: '김난영',
          studentId: '20211234',
        ),
        MyRoutes.affiliateListPage: (context) => AffiliateListPage(affiliates: [], collegeName: '',),
      },
    );
  }

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}

