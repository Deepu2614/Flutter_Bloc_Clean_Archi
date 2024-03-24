import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/show_dialogue.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar start
      appBar: AppBar(
        title: Text("Todo Bloc"),
        backgroundColor: Colors.deepPurple,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),

      //Appbar end

      //Body start
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => Card(
          child: Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {
                  return;
                },
              ),
              Expanded(child: Text("Todo")),
              Icon(
                Icons.delete,
                color: Colors.deepPurple,
              )
            ],
          ),
        ),
      ),
      //Body end

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return ShowDialogue();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
