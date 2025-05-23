import 'package:flutter/material.dart';
import 'package:master/screens/account.dart';
import 'package:master/screens/home.dart';
import 'package:master/screens/json/file_json_screen.dart';
import 'package:master/screens/message.dart';
import 'package:master/screens/navigation.dart';
import 'package:master/screens/state_manajemens/state_manajemen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _indexLayar = 1;
  final List _layarTerpilih = [
    const Message(),
    const Home(),
    const Account(),
  ];
  void _ganti(int index) {
    setState(() {
      _indexLayar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP 6SIA7'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      'assets/images/avatars/azlan.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Azlansaja.web.id',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Menu Item
            ListTile(
              leading: const Icon(Icons.arrow_forward),
              title: const Text('Navigasi'),
              selected: true,
              selectedColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigation(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.data_array),
              title: const Text('State Manajemen'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StateManajemen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.data_array),
              title: const Text('Json'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FileJsonScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: _layarTerpilih.elementAt(_indexLayar),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexLayar,
        onTap: _ganti,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
