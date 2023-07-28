import 'dart:convert';

class Word {
  final int id;
  final String name;
  final String meaning;

  Word({
    required this.id,
    required this.name,
    required this.meaning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'meaning': meaning,
    };
  }

  factory Word.fromMap(Map<String, dynamic> map) {
    return Word(
      id: map['id'] as int,
      name: map['name'] as String,
      meaning: map['meaning'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Word.fromJson(String source) =>
      Word.fromMap(json.decode(source) as Map<String, dynamic>);
}
