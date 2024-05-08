import 'package:get/state_manager.dart';
import 'package:hadith_demo/helpers/db_helper.dart';
import 'package:hadith_demo/models/books.dart';

class BooksController extends GetxController {
  final RxList<Books> _books = RxList([]);

  @override
  void onInit() {
    super.onInit();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    final db = await DatabaseHelper.openDb();
    _books.value = await DatabaseHelper.getBooks(db);
  }

  List<Books> get books => _books.value;
}

// Similar controllers for other tables
