import 'package:flutter/material.dart';
import 'dart:math';
import 'package:confetti/confetti.dart';
// import 'login.dart';
//
//
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'To-Do List',
//       home: ToDoList(),
//     );
//   }
// }
//
class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final newTask = TextEditingController();
  final allTasks = <String>[];
  final completedTasks = <String>[];
  final confettiController = ConfettiController(duration: const Duration(seconds: 1));

  @override
  void initState() {
    super.initState();
    confettiController.stop();
  }

  @override
  void dispose() {
    confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),

      body: Column(
        children: <Widget>[
          ConfettiWidget(
            confettiController: confettiController,
            blastDirection: pi,
            maxBlastForce: 2,
            minBlastForce: 1,
            emissionFrequency: 0.1,
            numberOfParticles: 30,
            gravity: 0.2,
            // colors of confetti
            colors: const [
              Colors.green,
              Colors.yellow,
              Colors.pink,
              Colors.orange,
              Colors.blue
            ],
          ),
          TextField(
            controller: newTask,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: 'Enter a new task',
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  allTasks.add(newTask.text);
                  newTask.clear();
                });
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38.0),
                        side: const BorderSide(color: Colors.blue),
                      )
                  )
              ),
              child: const Text('Add')
          ),
          Expanded(
            child: ListView.builder(
              itemCount: allTasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(allTasks[index]),
                  tileColor: Colors.blueGrey[300],
                  leading: Checkbox(
                    // checks if value is already ticked or not
                    value: completedTasks.contains(allTasks[index]),
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          if (value) {
                            completedTasks.add(allTasks[index]);
                            // play animation when task complete
                            confettiController.play();
                          } else {
                            completedTasks.remove(allTasks[index]);
                          }
                        }

                      });
                    },
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        allTasks.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: Text('Welcome to the home screen!'),
//       ),
//     );
//   }
// }