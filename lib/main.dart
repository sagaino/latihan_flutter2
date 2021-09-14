import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: belajarbuttombar(),
    );
  }
}

class belajarbuttombar extends StatefulWidget {
  const belajarbuttombar({Key? key}) : super(key: key);

  @override
  _belajarbuttombarState createState() => _belajarbuttombarState();
}

class _belajarbuttombarState extends State<belajarbuttombar> {
  int _selectedNavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ClipOval(
          child: Image(
            image: AssetImage('assets/doge.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        title: Text("Latihan 2"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_location)),
        ],
      ),
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.all(20),
        child: Center(
          child: _listPage[_selectedNavbar],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: "Pesanan"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }

  final _listPage = [
    Container(
      margin: EdgeInsets.all(20),
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/doge.jpg'),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              "Halaman Home",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    ),
    Container(
        child: Text(
      "Halaman Pesanan",
      style: TextStyle(fontSize: 25),
    )),
    Container(
        child: Text(
      "Halaman Inbox",
      style: TextStyle(fontSize: 20),
    )),
    Container(
        child: Text(
      "Halaman Akun",
      style: TextStyle(fontSize: 15),
    )),
  ];
}
