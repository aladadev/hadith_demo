import 'package:get/get.dart';
import 'package:hadith_demo/helpers/db_helper.dart';
import 'package:hadith_demo/models/section.dart';

class SectionController extends GetxController {
  final RxList<Section> _section = RxList([]);

  @override
  void onInit() async {
    super.onInit();

    await fetchSection();
  }

  Future<void> fetchSection() async {
    try {
      final db = await DatabaseHelper.openDb();
      _section.value = await DatabaseHelper.getSection(db);
    } catch (error) {
      printError(info: error.toString());
    }
  }

  List<Section> get section => _section;
}

// Similar controllers for other tables
