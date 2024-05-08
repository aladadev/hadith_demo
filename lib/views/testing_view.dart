import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_demo/controllers/hadith_controller.dart';
import 'package:hadith_demo/widgets/components/hadithcard.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    final HadithController hadithController = Get.put(HadithController());
    final hadithHelper = hadithController.hadith;
    // final SectionController sectionController = Get.find<SectionController>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Testing'),
            Obx(
              () => hadithHelper.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: ListView.builder(
                        itemCount: hadithController.hadith.length,
                        itemBuilder: (context, index) {
                          return HadithCard(
                              title: 'Sahih Bukhari',
                              hadithNumber: hadithHelper[index].hadith_id,
                              hadithCategory: hadithHelper[index].grade,
                              arabicText: hadithHelper[index].ar,
                              narrator: hadithHelper[index].narrator,
                              banglaText: hadithHelper[index].bn);
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
