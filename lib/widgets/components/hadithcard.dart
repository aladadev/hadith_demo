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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                HexagonWidget.pointy(
                  cornerRadius: 10,
                  width: 40,
                  color: const Color(0xFF6EBC66),
                  child: const Text(
                    'B',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'সহীহ বুখারী',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'হাদিস: $hadithNumber',
                      style: TextStyle(
                          color: Appconstants.appGreenColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Spacer(),
                Chip(
                  side: BorderSide.none,
                  backgroundColor: Appconstants.appGreenColor,
                  label: Text(
                    hadithCategory,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
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
