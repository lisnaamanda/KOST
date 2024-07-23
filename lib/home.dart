import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Implement notification functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Implement profile functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Rekomendasi Kamar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            // Room recommendations
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RoomCard(roomType: 'Kelas A', availableRooms: 0),
                  RoomCard(roomType: 'Kelas B', availableRooms: 2),
                  RoomCard(roomType: 'Kelas C', availableRooms: 3),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Best Seller!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            BestSellerCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Kamar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],

// Suggested code may be subject to a license. Learn more: ~LicenseLog:3516328708.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1540137681.

        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,

        currentIndex: 0, // Set the current index as needed
        onTap: (index) {
          // Handle navigation based on the index
        },
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  final String roomType;
  final int availableRooms;

  RoomCard({required this.roomType, required this.availableRooms});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('sisa kamar', style: TextStyle(fontSize: 12)),
            Text(availableRooms.toString(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: availableRooms > 0
                  ? () {
                      // Handle room booking
                    }
                  : null,
              child: Text(roomType),
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset('images/kamar1.png',
                width: 100), // Tambahkan path gambar best seller room
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kelas B',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('Harga: 150.000', style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/rooms');
                  },
                  child: Text('Pesan Kamar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
