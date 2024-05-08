import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
class Section {
  final int id;
  final int book_id;
  final String book_name;
  final int chapter_id;
  final int section_id;
  final String title;
  final String preface;
  final String number;
  Section(
    this.id,
    this.book_id,
    this.book_name,
    this.chapter_id,
    this.section_id,
    this.title,
    this.preface,
    this.number,
  );

  Section copyWith({
    int? id,
    int? book_id,
    String? book_name,
    int? chapter_id,
    int? section_id,
    String? title,
    String? preface,
    String? number,
  }) {
    return Section(
      id ?? this.id,
      book_id ?? this.book_id,
      book_name ?? this.book_name,
      chapter_id ?? this.chapter_id,
      section_id ?? this.section_id,
      title ?? this.title,
      preface ?? this.preface,
      number ?? this.number,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'book_id': book_id,
      'book_name': book_name,
      'chapter_id': chapter_id,
      'section_id': section_id,
      'title': title,
      'preface': preface,
      'number': number,
    };
  }

  factory Section.fromMap(Map<String, dynamic> map) {
    return Section(
      map['id'] as int,
      map['book_id'] as int,
      map['book_name'] as String,
      map['chapter_id'] as int,
      map['section_id'] as int,
      map['title'] as String,
      map['preface'] as String,
      map['number'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Section.fromJson(String source) =>
      Section.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Section(id: $id, book_id: $book_id, book_name: $book_name, chapter_id: $chapter_id, section_id: $section_id, title: $title, preface: $preface, number: $number)';
  }

  @override
  bool operator ==(covariant Section other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.book_id == book_id &&
        other.book_name == book_name &&
        other.chapter_id == chapter_id &&
        other.section_id == section_id &&
        other.title == title &&
        other.preface == preface &&
        other.number == number;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        book_id.hashCode ^
        book_name.hashCode ^
        chapter_id.hashCode ^
        section_id.hashCode ^
        title.hashCode ^
        preface.hashCode ^
        number.hashCode;
  }
}
