class TodoModel {
  final int? id;
  final String? title;
  final String? datetime;

  TodoModel({this.id, this.title, this.datetime});

  TodoModel.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        title = res['title'],
        datetime = res['datetime'];

  Map<String, Object?> toMap() {
    return {'id': id, 'title': title, 'datetime': datetime};
  }
}


class NoteModel {
  final int? id;
  final String? title;
  final String? description;

  NoteModel({this.id, this.title, this.description});

  NoteModel.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        title = res['title'],
        description = res['description'];

  Map<String, Object?> toMap() {
    return {'id': id, 'title': title, 'description': description};
  }
}


class MoodEntry {
  final int id;
  final String date;
  final String mood;

  MoodEntry({required this.date, required this.mood, this.id = 0});

  MoodEntry.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        date = res['date'],
        mood = res['mood'];

  Map<String, Object?> toMap() {
    return {'id': id, 'date': date, 'mood': mood};
  }
}
