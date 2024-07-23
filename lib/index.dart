import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C&C Kos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IndexPage(),
    );
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bgg.png'), // Tambahkan path gambar Anda di sini
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay with logo and text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                Image.asset(
                  'images/logo.png', // Path to your logo image
                  height: 150,
                ),
                SizedBox(height: 20),
                Text(
                  'WELCOME TO C&C KOS',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'kos C&C menawarkan tempat tinggal yang nyaman, aman, dan strategis bagi para mahasiswa, pekerja, dan profesional muda.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('GET START'),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
