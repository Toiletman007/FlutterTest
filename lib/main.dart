import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    // TODO: data from firebase
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Flutter is Fun!"),
        ),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.red],
                  stops: [0.2, 0.8],
                ),
              ),
              child: const Text("Helloooo"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(100),
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.red],
                  stops: [0.2, 0.8],
                ),
              ),
              child: const Text("Helloooo"),
            ),
            Center(
              child: Text('count is: $count'),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
        drawer: const Drawer(
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}
