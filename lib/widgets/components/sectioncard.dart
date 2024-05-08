import 'package:flutter/material.dart';
import 'package:hadith_demo/constants/colors.dart';

class SectionCard extends StatelessWidget {
  final String title;
  final String preface;
  final String number;
  const SectionCard({
    super.key,
    required this.title,
    required this.preface,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Appconstants.appGreenColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            preface.isEmpty
                ? const SizedBox()
                : Column(
                    children: [
                      const Divider(),
                      Text(
                        preface,
                        style: const TextStyle(
                            color: Color.fromARGB(221, 43, 42, 42),
                            fontWeight: FontWeight.w200,
                            fontSize: 14),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
