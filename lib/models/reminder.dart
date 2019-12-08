class Reminder {
  int id;
  String text;
  DateTime created_at;
  int priority;
  bool completed;

  Reminder({
    this.id, 
    this.text, 
    this.created_at, 
    this.priority,
    this.completed = false,
    });
}