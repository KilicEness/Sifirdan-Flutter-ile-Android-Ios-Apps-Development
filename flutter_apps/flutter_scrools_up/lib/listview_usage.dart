import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

// ignore: must_be_immutable
class ListViewUsage extends StatelessWidget {
  ListViewUsage({super.key});

  List<Student> allStudents = List.generate(
    500,
    (index) => Student(
        index + 1, 'Student name ${index + 1}', 'Student surname ${index + 1}'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: buildListViewSeparated(),
    );
  }

  ListView buildListViewSeparated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var currentStudent = allStudents[index];
        return Card(
          color: index % 2 == 0 ? Colors.red.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
              }
              EasyLoading.showToast('Element clicked',
                  duration: Duration(
                    seconds: 3,
                  ),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.bottom);
            },
            onLongPress: () {
              _alertDialogOperations(context, currentStudent);
            },
            title: Text(currentStudent.name),
            subtitle: Text(currentStudent.surname),
            leading: CircleAvatar(
              child: Text(currentStudent.id.toString()),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
      separatorBuilder: (context, index) {
        var newIndex = index + 1;
        if (newIndex % 4 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView classicListView() {
    return ListView(
      children: allStudents
          .map((Student std) => ListTile(
                title: Text(std.name),
                subtitle: Text(std.surname),
                leading: CircleAvatar(
                  child: Text(std.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alertDialogOperations(BuildContext myContext, Student choosen) {
    showDialog(
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(choosen.toString()),
            content: SingleChildScrollView(
              child: ListBody(children: [
                Text('enes' * 100),
                Text('enes1' * 100),
                Text('enes2' * 100),
              ]),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('CLOSE'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('OK'),
                  ),
                ],
              )
            ],
          );
        });
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);

  @override
  String toString() {
    return 'Name:$name, Surname:$surname, id:$id';
  }
}
