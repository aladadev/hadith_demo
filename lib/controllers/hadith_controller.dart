import 'package:get/get.dart';
import 'package:hadith_demo/helpers/db_helper.dart';
import 'package:hadith_demo/models/hadith.dart';

class HadithController extends GetxController {
  final RxList<Hadith> _hadith = RxList([]);

  @override
  void onInit() async {
    super.onInit();
    await fetchHadith();
  }

  Future<void> fetchHadith() async {
    try {
      final db = await DatabaseHelper.openDb();
      _hadith.value = await DatabaseHelper.getHadith(db);
    } catch (error) {
      printError(info: error.toString());
    }
  }

  List<Hadith> get hadith => _hadith.value;
}

// Similar controllers for other tables
