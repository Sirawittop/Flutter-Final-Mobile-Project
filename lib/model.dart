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