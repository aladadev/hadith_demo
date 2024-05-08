// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  final String note;
  const HadithCard({
    super.key,
    required this.title,
    required this.hadithNumber,
    required this.hadithCategory,
    required this.arabicText,
    required this.narrator,
    required this.banglaText,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Appconstants.appGreenColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    hadithCategory,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
                const Icon(Icons.more_vert_outlined),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              arabicText,
              style: const TextStyle(fontFamily: 'ArabicFont', fontSize: 24),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              '$narrator থেকে বর্ণিত:',
              style: TextStyle(color: Appconstants.appGreenColor, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                banglaText,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            note.isEmpty
                ? const SizedBox()
                : Column(
                    children: [
                      const Divider(),
                      Text(note),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
