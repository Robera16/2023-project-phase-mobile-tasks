class Task {
  String title;
  String description;
  DateTime dueDate;
  bool isCompleted;

  Task(this.title, this.description, this.dueDate, this.isCompleted);

  @override
  String toString() {
    return 'Title: $title\nDescription: $description\nDue Date: $dueDate\nStatus: ${isCompleted ? 'Completed' : 'Pending'}';
  }
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  void viewAllTasks() {
    for (var i = 0; i < tasks.length; i++) {
      print('Task $i:\n${tasks[i]}\n');
    }
  }

  void viewCompletedTasks() {
    for (var i = 0; i < tasks.length; i++) {
      if (tasks[i].isCompleted) {
        print('Task $i:\n${tasks[i]}\n');
      }
    }
  }

  void viewPendingTasks() {
    for (var i = 0; i < tasks.length; i++) {
      if (!tasks[i].isCompleted) {
        print('Task $i:\n${tasks[i]}\n');
      }
    }
  }

  void editTask(int index, Task updatedTask) {
    if (index >= 0 && index < tasks.length) {
      tasks[index] = updatedTask;
      print('Task $index has been updated.');
    } else {
      print('Invalid task index.');
    }
  }

  void deleteTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
      print('Task $index has been deleted.');
    } else {
      print('Invalid task index.');
    }
  }
}

void main() {
  final taskManager = TaskManager();

  taskManager
      .addTask(Task('Task 1', 'Description for Task 1', DateTime.now(), false));
  taskManager
      .addTask(Task('Task 2', 'Description for Task 2', DateTime.now(), true));

  print('All Tasks:');
  taskManager.viewAllTasks();

  print('\nCompleted Tasks:');
  taskManager.viewCompletedTasks();

  print('\nPending Tasks:');
  taskManager.viewPendingTasks();

  taskManager.editTask(
      0,
      Task('Updated Task 1', 'Updated description for Task 1', DateTime.now(),
          true));

  taskManager.deleteTask(1);
}
