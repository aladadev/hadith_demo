import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_demo/controllers/hadith_controller.dart';
import 'package:hadith_demo/controllers/section_controller.dart';
import 'package:hadith_demo/widgets/components/hadithcard.dart';
import 'package:hadith_demo/widgets/components/sectioncard.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    final HadithController hadithController = Get.put(HadithController());
    final SectionController sectionController = Get.put(SectionController());
    final hadithHelper = hadithController.hadith;
    final sectionHelper = sectionController.section;
    // final SectionController sectionController = Get.find<SectionController>();
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'সহীহ বুখারী',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 4,
            ),
            Text('ওহীর সূচনা অধ্যায়',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // const Text('Testing'),
              Obx(
                () => hadithHelper.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: ListView.builder(
                          itemCount: hadithController.hadith.length,
                          itemBuilder: (context, index) {
                            final hadith = hadithHelper[index];
                            final matchingSections = sectionHelper.where(
                                (section) =>
                                    section.section_id == hadith.section_id);
                            final section = matchingSections.first;
                            print('matching **** section: $section');
                            return Column(
                              children: [
                                sectionHelper.isEmpty
                                    ? const SizedBox()
                                    : SectionCard(
                                        title: section.title,
                                        preface: section.preface,
                                        number: section.number),
                                HadithCard(
                                  title: 'Sahih Bukhari',
                                  hadithNumber: hadith.hadith_id,
                                  hadithCategory: hadith.grade,
                                  arabicText: hadith.ar,
                                  narrator: hadith.narrator,
                                  banglaText: hadith.bn,
                                  note: hadith.note,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
