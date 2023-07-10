import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('todo_box');
  runApp(MaterialApp(
    home: curd_hive(),
  ));
}

class curd_hive extends StatefulWidget {
  @override
  State<curd_hive> createState() => _curd_hiveState();
}

class _curd_hiveState extends State<curd_hive> {
  List<Map<String, dynamic>> task = [];
  final title = TextEditingController();
  final taskname = TextEditingController();
  //hive object
  final my_box = Hive.box('todo_box');
  void initState() {
    readTask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" curd_Hive"),
      ),
      body: task.isEmpty
          ? const Text('No data')
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
                final mytask = task[index]; // my task will be a map
                return Card(
                  child: ListTile(
                    title: Text(mytask['taskname']),
                    subtitle: Text(mytask['taskcontent']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              showtask(context, mytask["id"]);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deletetask(mytask['id']);
                            },
                            icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showtask(context, null),
        child: const Icon(Icons.task),
      ),
    );
  }

  //itemkeys similar to the sqllites
  void showtask(BuildContext context, int? itemkey) {
    if (itemkey != null) {
      final existing_task =
          task.firstWhere((element) => element['id'] == itemkey);
      title.text = existing_task['taskname'];
      taskname.text = existing_task['taskcontent'];
    }
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: title,
                  decoration: InputDecoration(hintText: "Text name"),
                ),
                TextField(
                  controller: taskname,
                  decoration: InputDecoration(hintText: "Task content"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (itemkey == null) {
                        createTask({
                          "taskname": title.text.trim(),
                          "taskcontent": taskname.text.trim()
                        });
                      }
                      if (itemkey != null) {
                        updateTask(itemkey, {
                          "taskname": title.text,
                          "taskcontent": taskname.text
                        });
                      }
                      title.text = "";
                      taskname.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(
                        itemkey == null ? "create contact" : "update contact"))
              ],
            ),
          );
        });
  }

// to create a new data in hive box
  Future<void> createTask(Map<String, dynamic> newtask) async {
    await my_box.add(newtask);
    readTask();
  }

  Future<void> updateTask(int itemkey, Map<String, dynamic> uptask) async {
    await my_box.put(itemkey, uptask);
    readTask();
  }

  void readTask() {
    // fetch all the keys in ascending order
    final task_from_hive = my_box.keys.map((key) {
      final value = my_box.get(key);
      return {
        'id': key,
        'taskname': value['taskname'],
        'taskcontent': value['taskcontent']
      };
    }).toList();
    setState(() {
      task = task_from_hive.reversed.toList(); // sort latest to older
    });
  }

  Future<void> deletetask(int itemkey) async {
    await my_box.delete(itemkey);
    readTask();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('successfully delete'),
    ));
  }
}
