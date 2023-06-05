import 'package:flutter/material.dart';

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
      body: ListView(
        children: allStudents
            .map((Student std) => ListTile(
                  title: Text(std.name),
                  subtitle: Text(std.surname),
                  leading: CircleAvatar(
                    child: Text(std.id.toString()),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
