import 'package:flutter/material.dart';

class RoomSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Room'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Kelas B'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoomDetailPage(
                    room: Room(
                      name: 'Kelas B',
                      facilities: [
                        'tempat tidur',
                        'lemari pakaian',
                        'meja belajar dan kursi',
                        'AC',
                        'kamar mandi dalam dan air panas',
                        'TV'
                      ],
                      commonFacilities: [
                        'dapur bersama',
                        'ruang makan bersama',
                        'ruang tamu',
                        'mesin cuci',
                        'tempat parkir'
                      ],
                      security: [
                        'Keamanan 24 jam',
                        'CCTV'
                      ],
                      price: 1500000,
                    ),
                  ),
                ),
              );
            },
          ),
          // Add more ListTile for other rooms here...
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Kamar'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Transaksi'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
          selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        currentIndex: 1, // Set the current index to Kamar
        onTap: (index) {
          // Handle navigation to different pages
        },
      ),
    );
  }
}

class RoomDetailPage extends StatefulWidget {
  final Room room;

  RoomDetailPage({required this.room});

  @override
  State<RoomDetailPage> createState() => _RoomDetailPageState();
}

class _RoomDetailPageState extends State<RoomDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.room.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://via.placeholder.com/150',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text('Fasilitas', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...widget.room.facilities.map((facility) => Text('• $facility')).toList(),
            SizedBox(height: 16),
            Text('Fasilitas umum', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...widget.room.commonFacilities.map((facility) => Text('• $facility')).toList(),
            SizedBox(height: 16),
            Text('Keamanan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...widget.room.security.map((security) => Text('• $security')).toList(),
            SizedBox(height: 16),
            Text('Harga: Rp.${widget.room.price}/bln', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle booking logic
              },
              child: Text('continue'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Kamar'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Transaksi'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
         selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        currentIndex: 1, // Set the current index to Kamar
        onTap: (index) {
          // Handle navigation to different pages
        },
      ),
    );
  }
}

class Room {
  final String name;
  final List<String> facilities;
  final List<String> commonFacilities;
  final List<String> security;
  final int price;

  Room({
    required this.name,
    required this.facilities,
    required this.commonFacilities,
    required this.security,
    required this.price,
  });
}
