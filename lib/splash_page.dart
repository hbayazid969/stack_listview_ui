import 'package:flutter/material.dart';
import 'package:stack_listview_ui/listview_page.dart';

class Splash_page extends StatefulWidget {
  const Splash_page({Key? key}) : super(key: key);

  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.network(
              "https://cdn.pixabay.com/photo/2016/07/20/16/41/shoe-1530678_1280.png",
              height: double.infinity,
            ),
            Positioned(
                bottom: 60,
                left: 10,
                child: Column(
                  children: [
                    Text(
                      "I like this beautiful shoe \n Beautiful Design",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 140),
                      child: Text(
                        "Happy Shopping",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 87, 131, 88),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Listview_page()));
                            },
                            child: Text(
                              "Start",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Listview_page()));
                            },
                            child: Text(
                              "Skip this",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
