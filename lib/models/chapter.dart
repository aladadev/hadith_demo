import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Chapter {
  final int id;
  final int chapter_id;
  final int book_id;
  final String title;
  final int number;
  final String hadis_range;
  final String book_name;

  Chapter(
    this.id,
    this.chapter_id,
    this.book_id,
    this.title,
    this.number,
    this.hadis_range,
    this.book_name,
  );

  Chapter copyWith({
    int? id,
    int? chapter_id,
    int? book_id,
    String? title,
    int? number,
    String? hadis_range,
    String? book_name,
  }) {
    return Chapter(
      id ?? this.id,
      chapter_id ?? this.chapter_id,
      book_id ?? this.book_id,
      title ?? this.title,
      number ?? this.number,
      hadis_range ?? this.hadis_range,
      book_name ?? this.book_name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'chapter_id': chapter_id,
      'book_id': book_id,
      'title': title,
      'number': number,
      'hadis_range': hadis_range,
      'book_name': book_name,
    };
  }

  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      map['id'] as int,
      map['chapter_id'] as int,
      map['book_id'] as int,
      map['title'] as String,
      map['number'] as int,
      map['hadis_range'] as String,
      map['book_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Chapter.fromJson(String source) =>
      Chapter.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Chapter(id: $id, chapter_id: $chapter_id, book_id: $book_id, title: $title, number: $number, hadis_range: $hadis_range, book_name: $book_name)';
  }

  @override
  bool operator ==(covariant Chapter other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.chapter_id == chapter_id &&
        other.book_id == book_id &&
        other.title == title &&
        other.number == number &&
        other.hadis_range == hadis_range &&
        other.book_name == book_name;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        chapter_id.hashCode ^
        book_id.hashCode ^
        title.hashCode ^
        number.hashCode ^
        hadis_range.hashCode ^
        book_name.hashCode;
  }
}
