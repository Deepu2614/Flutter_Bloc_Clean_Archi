import 'package:flutter/material.dart';

class ShowDialogue extends StatelessWidget {
  const ShowDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: Text('Add Todo'),
        children:[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Todo'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your logic to save the todo
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add your logic to save the todo
                        Navigator.of(context).pop();
                      },
                      child: Text('Save'),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ]
    );
  }
}
