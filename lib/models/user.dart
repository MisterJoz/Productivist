import 'package:productivist/models/task.dart';
import 'package:productivist/models/reminder.dart';
import 'package:productivist/models/event.dart';
import 'package:productivist/models/project.dart';

class User {
  int id;
  String name;
  String email;
  String password;
  List<Task> tasks;
  List<Reminder> reminders;
  List<Event> events;
  List<Project> projects;

  User(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.tasks,
      this.reminders,
      this.events,
      this.projects});
}

List<Task> myTasks = [
  Task(id: 0, task: "Study for finals", created_at: DateTime.now()),
  Task(id: 1, task: "Wash your clothes", created_at: DateTime.now()),
  Task(id: 2, task: "Make some food", created_at: DateTime.now()),
  Task(id: 3, task: "Go car shopping", created_at: DateTime.now()),
];

List<Reminder> myReminders = [
  Reminder(
    id: 0,
    text: "SWE2 Final Exam",
    created_at: DateTime.now(),
  ),
  Reminder(
    id: 1,
    text: "HW Due",
    created_at: DateTime.now(),
  ),
  Reminder(
    id: 2,
    text: "Do laundry",
    created_at: DateTime.now(),
  )
];

List<Project> myProjects = [
  Project(
      id: 0,
      title: "iOS App",
      description: "Productivity App",
      dueDate: DateTime.now()),
];

final User currentUser = User(
  id: 0,
  name: "Josh",
  email: "josh@gmail.com",
  password: "password",
  tasks: myTasks,
  reminders: myReminders,
  projects: myProjects,
);