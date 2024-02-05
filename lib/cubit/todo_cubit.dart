import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_bloc_app/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title cannot be empty');
      return;
    }
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );
    // Add the new todo to the list
    // state.add(todo);
    // emit([...state]);
    //or
    emit([...state, todo]);
  }

// debugging
  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    print('TodoCubit- $change');
  }
}
