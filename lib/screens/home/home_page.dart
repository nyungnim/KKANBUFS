import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:users/screens/affiliate_list/affiliate_list_page.dart';
import 'package:users/screens/qr/qr_page.dart';
import '../profile/profile_page.dart';

class HomePage extends StatelessWidget {
  final String username = "김난영"; // 사용자 이름
  final List<Map<String, String>> affiliates = [
    {"icon": "assets/icon/affiliates/codetree-logo.png", "name": "코드트리", "link": "https://www.codetree.ai/missions"},
    {"icon": "assets/icon/affiliates/codeit-logo.png", "name": "코드잇", "link": "https://www.codeit.kr/"},
    {"icon": "assets/icon/affiliates/eduwill-logo.png", "name": "에듀윌", "link": "https://www.eduwill.net/sites/home"},
    {"icon": "assets/icon/affiliates/wanted-logo.jpeg", "name": "원티드", "link": "https://www.wanted.co.kr/"},
    {"icon": "assets/icon/affiliates/inflearn-logo.jpeg", "name": "인프런", "link": "https://www.inflearn.com/"},
    {"icon": "assets/icon/affiliates/hackers-logo.jpeg", "name": "해커스", "link": "https://www.hackers.ac/"},
    {"icon": "assets/icon/affiliates/comento-logo.jpeg", "name": "코멘토", "link": "https://comento.kr/job-questions"},
    {"icon": "assets/icon/affiliates/siwon-logo.jpeg", "name": "시원스쿨", "link": "https://www.siwonschool.com/"},
    {"icon": "assets/icon/affiliates/aladin-logo.png", "name": "알라딘", "link": "https://www.aladin.co.kr/home/welcome.aspx"},
    {"icon": "assets/icon/affiliates/jobplanet-logo.png", "name": "잡플래닛", "link": "https://www.jobplanet.co.kr/job"},
    {"icon": "assets/icon/affiliates/megastudy-logo.jpeg", "name": "메가스터디", "link": "https://www.megastudy.net/"},
    {"icon": "assets/icon/affiliates/pmg-logo.png", "name": "박문각", "link": "https://www.pmg.co.kr/user/pmg/main.asp"},
    {"icon": "assets/icon/affiliates/codetree-logo.png", "name": "코드트리", "link": "https://www.codetree.ai/missions"},
    {"icon": "assets/icon/affiliates/codeit-logo.png", "name": "코드잇", "link": "https://www.codeit.kr/"},
    {"icon": "assets/icon/affiliates/eduwill-logo.png", "name": "에듀윌", "link": "https://www.eduwill.net/sites/home"},
    {"icon": "assets/icon/affiliates/wanted-logo.jpeg", "name": "원티드", "link": "https://www.wanted.co.kr/"},
    {"icon": "assets/icon/affiliates/inflearn-logo.jpeg", "name": "인프런", "link": "https://www.inflearn.com/"},
    {"icon": "assets/icon/affiliates/hackers-logo.jpeg", "name": "해커스", "link": "https://www.hackers.ac/"},
    {"icon": "assets/icon/affiliates/comento-logo.jpeg", "name": "코멘토", "link": "https://comento.kr/job-questions"},
    {"icon": "assets/icon/affiliates/siwon-logo.jpeg", "name": "시원스쿨", "link": "https://www.siwonschool.com/"},
    {"icon": "assets/icon/affiliates/aladin-logo.png", "name": "알라딘", "link": "https://www.aladin.co.kr/home/welcome.aspx"},
    {"icon": "assets/icon/affiliates/jobplanet-logo.png", "name": "잡플래닛", "link": "https://www.jobplanet.co.kr/job"},
    {"icon": "assets/icon/affiliates/megastudy-logo.jpeg", "name": "메가스터디", "link": "https://www.megastudy.net/"},
    {"icon": "assets/icon/affiliates/pmg-logo.png", "name": "박문각", "link": "https://www.pmg.co.kr/user/pmg/main.asp"},
  ];

  final List<String> colleges = [
    "My단대제휴",
    "총학생회",
    "디지털미디어IT대학",
    "상경대학",
    "아시아대학",
    "유럽미주대학"
  ];

  final List<String> backgroundImages = [
    "assets/images/colleges/fav_back.jpeg",
    "assets/images/colleges/perfect.png",
    "assets/images/colleges/reburning.jpg",
    "assets/images/colleges/togather.jpg",
    "assets/images/colleges/clover.png",
    "assets/images/colleges/unique.jpg"
  ];

  final List<Map<String, String>> mockAffiliates = [
    {"name": "최돼지", "location": "부산시 금정구 남산로 9", "type": "식당", "phoneNumber": "051-515-2850", "benefits": "할인 혜택 1를 제공받을 수 있습니다.", },
    {"name": "바나나펍", "location": "부산시 금정구 범어천로 31번길 42", "type": "주점", "phoneNumber": "070-4388-6372", "benefits": "할인 혜택 2를 제공받을 수 있습니다.", },
    {"name": "미로비어", "location": "부산시 금정구 범어천로 31번길 30-2", "type": "주점", "phoneNumber": "051-919-4915", "benefits": "할인 혜택 3를 제공받을 수 있습니다.", },
    {"name": "늘푸른 골프존", "location": "부산시 금정구 중앙대로 2011-1", "type": "피트니스", "phoneNumber": "051-582-0755", "benefits": "할인 혜택 4를 제공받을 수 있습니다.", },
    {"name": "카페 보스", "location": "부산시 금정구 중앙대로 2011-1", "type": "커피전문점", "phoneNumber": "a051-582-0755", "benefits": "할인 혜택 5를 제공받을 수 있습니다.", },
    // Add more mock affiliates...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$username 님, 반갑습니다."),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(
                      college: '디지털미디어IT대학',
                      department: '컴퓨터공학과',
                      studentId: '20201669',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // 여백 추가
          Text("💻 온라인 제휴업체 💻", style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Container(
            height: 100,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: affiliates.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () async {
                    final url = affiliates[index]["link"];
                    if (await canLaunch(url!)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          affiliates[index]["icon"]!,
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(height: 10),
                        Text(affiliates[index]["name"]!),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text("🏫 단대 제휴업체 🏫", style: TextStyle(fontSize: 20)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: colleges.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AffiliateListPage(
                            collegeName: colleges[index],
                            affiliates: mockAffiliates,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(backgroundImages[index]),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.dstATop),
                        ),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white38,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          colleges[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          height: 30,
          child: Center(
            child: IconButton(
              icon: Icon(Icons.qr_code, size: 40, color: Colors.grey[700]),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QrPage(
                      college: "디지털미디어IT대학",
                      department: "컴퓨터공학과",
                      name: "김난영",
                      studentId: "20201669",
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

