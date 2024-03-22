import 'package:flutter/material.dart';
import 'package:projet/Api/models/todo.dart';
import 'package:projet/Api/repository/todo_repository.dart';

import '../controller/todo_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //dependency injection
    var todoController = TodoController(TodoRepository());
    //test
    todoController.fetcTodoList();
    return Scaffold(
      appBar: AppBar(
        title:const Text('REST API'),
      ),
      body: FutureBuilder<List<Todo>>(
        future:  todoController.fetcTodoList(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          if(snapshot.hasError) {
            return const Center(
              child:  Text('error'),
            );
          }
          return buildBodyContent(snapshot, todoController);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Todo todo = Todo(userId: 3, title: 'Manambina ',completed: false);
          todoController.postTodo(todo);
        },
        child:const Icon(Icons.add),
      ),
    );
  }

  SafeArea buildBodyContent(AsyncSnapshot<List<Todo>> snapshot, TodoController todoController) {
    return SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index){
                var todo = snapshot.data?[index];
                return Container(
                  height: 100.0,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:  Row(
                    children: [
                      Expanded(flex: 1, child: Text('${todo?.id}')),
                      Expanded(flex: 1, child: Text('${todo?.title}')),
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Ilay bouton 3 d niextractena ilay buildCallContainer
                            InkWell(
                                onTap: (){
                                  //make snackbar
                                  todoController.updatePatchCompleted(todo!)
                                  .then((value){
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                        SnackBar(
                                            duration:
                                              const Duration(milliseconds: 500),
                                            content: Text('$value'),));
                                  });
                                },
                                child: buildCallContainer(
                                    'patch', Colors.amber)),

                            //make put call
                            InkWell(
                                onTap: (){
                                  todoController.updatePutCompleted(todo!);
                                },
                                child: buildCallContainer(
                                    'put', Colors.purple)),

                            //make delete call
                            InkWell(
                                onTap: (){
                                  todoController
                                      .deleteTodo(todo!)
                                      .then((value) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                            SnackBar(
                                              duration:
                                              const Duration(milliseconds: 500),
                                              content: Text('$value'),));
                                  });
                                },
                                child: buildCallContainer(
                                    'del', Colors.red)),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index){
                return const Divider(
                  thickness: 0.5,
                  height: 0.5,
                );
              },
              itemCount: snapshot.data?.length ?? 0),
        );
  }

  Container buildCallContainer(String title, Color color) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),),
      child: Center(child: Text('$title')),
    );
  }
}
