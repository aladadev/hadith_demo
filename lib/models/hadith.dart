import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
class Hadith {
  final int hadith_id;
  final int book_id;
  final String book_name;
  final int chapter_id;
  final int section_id;
  final String narrator;
  final String bn;
  final String ar;
  final String ar_diacless;
  final String note;
  final int grade_id;
  final String grade;
  final String grade_color;

  Hadith(
    this.hadith_id,
    this.book_id,
    this.book_name,
    this.chapter_id,
    this.section_id,
    this.narrator,
    this.bn,
    this.ar,
    this.ar_diacless,
    this.note,
    this.grade_id,
    this.grade,
    this.grade_color,
  );

  Hadith copyWith({
    int? hadith_id,
    int? book_id,
    String? book_name,
    int? chapter_id,
    int? section_id,
    String? narrator,
    String? bn,
    String? ar,
    String? ar_diacless,
    String? note,
    int? grade_id,
    String? grade,
    String? grade_color,
  }) {
    return Hadith(
      hadith_id ?? this.hadith_id,
      book_id ?? this.book_id,
      book_name ?? this.book_name,
      chapter_id ?? this.chapter_id,
      section_id ?? this.section_id,
      narrator ?? this.narrator,
      bn ?? this.bn,
      ar ?? this.ar,
      ar_diacless ?? this.ar_diacless,
      note ?? this.note,
      grade_id ?? this.grade_id,
      grade ?? this.grade,
      grade_color ?? this.grade_color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadith_id': hadith_id,
      'book_id': book_id,
      'book_name': book_name,
      'chapter_id': chapter_id,
      'section_id': section_id,
      'narrator': narrator,
      'bn': bn,
      'ar': ar,
      'ar_diacless': ar_diacless,
      'note': note,
      'grade_id': grade_id,
      'grade': grade,
      'grade_color': grade_color,
    };
  }

  factory Hadith.fromMap(Map<String, dynamic> map) {
    return Hadith(
      map['hadith_id'] as int,
      map['book_id'] as int,
      map['book_name'] as String,
      map['chapter_id'] as int,
      map['section_id'] as int,
      map['narrator'] as String,
      map['bn'] as String,
      map['ar'] as String,
      map['ar_diacless'] as String,
      map['note'] as String,
      map['grade_id'] as int,
      map['grade'] as String,
      map['grade_color'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Hadith.fromJson(String source) =>
      Hadith.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Hadith(hadith_id: $hadith_id, book_id: $book_id, book_name: $book_name, chapter_id: $chapter_id, section_id: $section_id, narrator: $narrator, bn: $bn, ar: $ar, ar_diacless: $ar_diacless, note: $note, grade_id: $grade_id, grade: $grade, grade_color: $grade_color)';
  }

  @override
  bool operator ==(covariant Hadith other) {
    if (identical(this, other)) return true;

    return other.hadith_id == hadith_id &&
        other.book_id == book_id &&
        other.book_name == book_name &&
        other.chapter_id == chapter_id &&
        other.section_id == section_id &&
        other.narrator == narrator &&
        other.bn == bn &&
        other.ar == ar &&
        other.ar_diacless == ar_diacless &&
        other.note == note &&
        other.grade_id == grade_id &&
        other.grade == grade &&
        other.grade_color == grade_color;
  }

  @override
  int get hashCode {
    return hadith_id.hashCode ^
        book_id.hashCode ^
        book_name.hashCode ^
        chapter_id.hashCode ^
        section_id.hashCode ^
        narrator.hashCode ^
        bn.hashCode ^
        ar.hashCode ^
        ar_diacless.hashCode ^
        note.hashCode ^
        grade_id.hashCode ^
        grade.hashCode ^
        grade_color.hashCode;
  }
}
