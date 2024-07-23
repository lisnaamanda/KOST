import 'package:flutter/material.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Implement notification functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
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
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Daftar Kamar', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            // Room list
            Expanded(
              child: ListView(
                children: const [
                  RoomCard(roomType: 'Kelas A', availableRooms: 0),
                  RoomCard(roomType: 'Kelas B', availableRooms: 2),
                  RoomCard(roomType: 'Kelas C', availableRooms: 3),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Rekomendasi Kamar', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const BestSellerCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',  
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Kamar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage),
            label: 'Data Kost',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        
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

  const RoomCard({super.key, required this.roomType, required this.availableRooms});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('sisa kamar', style: TextStyle(fontSize: 12)),
            Text(availableRooms.toString(), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: availableRooms > 0 ? () {
                // Handle room booking
              } : null,
              child: Text(roomType),
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
            Image.asset('assets/images/best_seller_room.jpg', width: 100), // Tambahkan path gambar best seller room
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Kelas B', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Text('Harga: 150.000', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle room booking
                  },
                  child: const Text('Pesan Kamar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
