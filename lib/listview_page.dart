import 'package:flutter/material.dart';

class Listview_page extends StatefulWidget {
  const Listview_page({Key? key}) : super(key: key);

  @override
  State<Listview_page> createState() => _Listview_pageState();
}

class _Listview_pageState extends State<Listview_page> {
  var student_list = [
    'Rakib',
    'Hamid',
    'Lamia',
    'Jahid',
    'Rajib',
    'Tuhin',
    'Shakil',
    'Jahid',
    'Nehad',
    'Taleb'
  ];

  var student_list_info = [
    'Software Engineer',
    'HR Manager',
    'Friend',
    'Classmate',
    'Teacher',
    'job Holder',
    'friend',
    'Neighbour',
    'Doctor',
    'Uncle'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        title: Text(
          "Listview Example",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
          itemCount: student_list.length,
          itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListTile(
                    title: Text(student_list[index]),
                    subtitle: Text(student_list_info[index]),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.call),
                  ),
                ),
              )),
    );
  }
}
