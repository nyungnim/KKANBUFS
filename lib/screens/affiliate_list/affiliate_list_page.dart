import 'package:flutter/material.dart';
import '../affiliate_detail/affiliate_detail_page.dart';

class AffiliateListPage extends StatelessWidget {
  final String collegeName;
  final List<Map<String, String>> affiliates;

  AffiliateListPage({required this.collegeName, required this.affiliates});

  @override
  Widget build(BuildContext context) {
    // Sort affiliates based on the college name
    List<Map<String, String>> sortedAffiliates = List.from(affiliates);

    if (collegeName == "디지털미디어IT대학" ||
        collegeName == "상경대학" ||
        collegeName == "유럽미주대학") {
      sortedAffiliates.sort((a, b) => b['name']!.compareTo(a['name']!));
    } else {
      sortedAffiliates.sort((a, b) => a['name']!.compareTo(b['name']!));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('$collegeName 제휴업체 리스트'),
      ),
      body: ListView.builder(
        itemCount: sortedAffiliates.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sortedAffiliates[index]['name']!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('주소: ${sortedAffiliates[index]['location']}'),
                Text('전화번호: ${sortedAffiliates[index]['phoneNumber']}'),
              ],
            ),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => AffiliateDetailPage(
            //         name: sortedAffiliates[index]['name']!,
            //         location: sortedAffiliates[index]['location']!,
            //         city: sortedAffiliates[index]['city']!,
            //         phoneNumber: sortedAffiliates[index]['phoneNumber'],
            //         type: sortedAffiliates[index]['type']!,
            //         link: sortedAffiliates[index]['link']!,
            //         benefits: sortedAffiliates[index]['benefits']!,
            //       ),
            //     ),
            //   );
            // },
          );
        },
      ),
    );
  }
}

