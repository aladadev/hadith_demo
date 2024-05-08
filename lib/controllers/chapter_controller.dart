import 'package:get/state_manager.dart';
import 'package:hadith_demo/helpers/db_helper.dart';
import 'package:hadith_demo/models/chapter.dart';

class ChaptersController extends GetxController {
  final RxList<Chapter> _chapters = RxList([]);

  @override
  void onInit() {
    super.onInit();
    fetchChapters();
  }

  Future<void> fetchChapters() async {
    final db = await DatabaseHelper.openDb();
    _chapters.value = await DatabaseHelper.getChapters(db);
  }

  List<Chapter> get chapters => _chapters.value;
}

// Similar controllers for other tables
