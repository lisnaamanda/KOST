import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kamar'),
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
            Text('Kategori',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            // Room list
            Expanded(
              child: ListView(
                children: [
                  RoomDetailCard(
                    roomType: 'Kelas A',
                    availableRooms: 0,
                    price: 2000000,
                    imagePath: 'images/kamar3.png',
                  ),
                  RoomDetailCard(
                    roomType: 'Kelas B',
                    availableRooms: 2,
                    price: 150000,
                    imagePath: 'images/kamar1.png',
                  ),
                  RoomDetailCard(
                    roomType: 'Kelas C',
                    availableRooms: 3,
                    price: 750000,
                    imagePath: 'images/kamar2.png',
                  ),
                ],
              ),
            ),
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
          selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        currentIndex: 1, // Set the current index to Kamar
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

  RoomCard({super.key, required this.roomType, required this.availableRooms});

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

class RoomDetailCard extends StatelessWidget {
  final String roomType;
  final int availableRooms;
  final int price;
  final String imagePath;

  RoomDetailCard({super.key, 
    required this.roomType,
    required this.availableRooms,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(imagePath, width: 100), // Tambahkan path gambar sesuai
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(roomType,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('sisa kamar: $availableRooms',
                      style: TextStyle(fontSize: 16)),
                  Text('Harga: ${price.toString()}',
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/roomdetail');
                          // Handle room detail check
                        },
                        child: Text('Cek kamar'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/order');
                        },
                        child: Text('Pesan kamar'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset('assets/images/best_seller_room.jpg',
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
                    // Handle room booking
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
