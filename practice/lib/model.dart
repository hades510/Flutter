class ToDo {
  String? id;
  String? todotxt;
  late bool isDone;

  ToDo({
    required this.id,
    required this.todotxt,
    this.isDone = false,
  });

  static List<ToDo> todolist() {
    return [
      ToDo(id: '1', todotxt: 'yeah', isDone: true),
      ToDo(id: '1', todotxt: 'yeah', isDone: true),
      ToDo(id: '1', todotxt: 'yeah', isDone: true),
      ToDo(id: '1', todotxt: 'yeah', isDone: true),
      ToDo(id: '1', todotxt: 'yeah', isDone: true),
      ToDo(id: '1', todotxt: 'yeah', isDone: true),
    ];
  }
}
