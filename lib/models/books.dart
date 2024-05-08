// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Books {
  final int id;
  final String title;
  final String title_ar;
  final int number_of_hadis;
  final String abvr_code;
  final String book_name;
  final String book_descr;

  Books(
    this.id,
    this.title,
    this.title_ar,
    this.number_of_hadis,
    this.abvr_code,
    this.book_name,
    this.book_descr,
  );

  Books copyWith({
    int? id,
    String? title,
    String? title_ar,
    int? number_of_hadis,
    String? abvr_code,
    String? book_name,
    String? book_descr,
  }) {
    return Books(
      id ?? this.id,
      title ?? this.title,
      title_ar ?? this.title_ar,
      number_of_hadis ?? this.number_of_hadis,
      abvr_code ?? this.abvr_code,
      book_name ?? this.book_name,
      book_descr ?? this.book_descr,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'title_ar': title_ar,
      'number_of_hadis': number_of_hadis,
      'abvr_code': abvr_code,
      'book_name': book_name,
      'book_descr': book_descr,
    };
  }

  factory Books.fromMap(Map<String, dynamic> map) {
    return Books(
      map['id'] as int,
      map['title'] as String,
      map['title_ar'] as String,
      map['number_of_hadis'] as int,
      map['abvr_code'] as String,
      map['book_name'] as String,
      map['book_descr'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Books.fromJson(String source) =>
      Books.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Books(id: $id, title: $title, title_ar: $title_ar, number_of_hadis: $number_of_hadis, abvr_code: $abvr_code, book_name: $book_name, book_descr: $book_descr)';
  }

  @override
  bool operator ==(covariant Books other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.title_ar == title_ar &&
        other.number_of_hadis == number_of_hadis &&
        other.abvr_code == abvr_code &&
        other.book_name == book_name &&
        other.book_descr == book_descr;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        title_ar.hashCode ^
        number_of_hadis.hashCode ^
        abvr_code.hashCode ^
        book_name.hashCode ^
        book_descr.hashCode;
  }
}
