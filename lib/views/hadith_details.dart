// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hadith_demo/controllers/hadith_controller.dart';
// import 'package:hadith_demo/controllers/section_controller.dart';

// class HadithDetails extends StatelessWidget {
//   const HadithDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           actions: const [
//             Padding(
//               padding: EdgeInsets.only(right: 12),
//               child: Icon(Icons.settings),
//             ),
//           ],
//           title: const Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Sahih Bukhari',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//               ),
//               Text(
//                 'Book Name',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
//               ),
//             ],
//           ),
//         ),
//         body: const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [],
//             ),
//           ),
//         ));
//   }
// }

// class SectionList extends StatelessWidget {
//   final SectionController userController = Get.put(SectionController());

//   SectionList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetX<SectionController>(
//       builder: (controller) => ListView.builder(
//         itemCount: controller.section.length,
//         itemBuilder: (context, index) {
//           final section = controller.section[index];
//           return Column(
//             children: [
//               Text(section.book_name),
//               const SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 section.title,
//                 style: const TextStyle(fontSize: 50),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// class HadithList extends StatelessWidget {
//   final userController = Get.put(HadithController());

//   HadithList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetX<HadithController>(
//       builder: (controller) => ListView.builder(
//         itemCount: controller.hadith.length,
//         itemBuilder: (context, index) {
//           final hadith = controller.hadith[index];
//           return Column(
//             children: [
//               Text(hadith.narrator),
//               const SizedBox(
//                 height: 20,
//               ),
//               Text(hadith.book_name),
//               const SizedBox(
//                 height: 20,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
