import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index = 0;
  List showPage = [
    Center(child: Text("Home")),
    Center(child: Text("Business")),
    Center(child: Text("School")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Bottom Navigation Bar'),
      ),
      body: showPage[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[200],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
