import 'package:flutter/material.dart';
import 'package:hadith_demo/constants/colors.dart';
import 'package:hexagon/hexagon.dart';

class HadithCard extends StatelessWidget {
  final String title;
  final int hadithNumber;
  final String hadithCategory;
  final String arabicText;
  final String narrator;
  final String banglaText;
  const HadithCard({
    super.key,
    required this.title,
    required this.hadithNumber,
    required this.hadithCategory,
    required this.arabicText,
    required this.narrator,
    required this.banglaText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                HexagonWidget.pointy(
                  cornerRadius: 10,
                  width: 50,
                  color: const Color(0xFF6EBC66),
                  child: const Text(
                    'B',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Sahih Bukhari'),
                    Text(hadithNumber.toString()),
                  ],
                ),
                const Spacer(),
                Chip(
                  label: Text(hadithCategory),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_outlined),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(arabicText),
            const SizedBox(
              height: 16,
            ),
            Text(
              '$narrator :',
              style: TextStyle(color: Appconstants.appGreenColor),
            ),
            Text(banglaText)
          ],
        ),
      ),
    );
  }
}
