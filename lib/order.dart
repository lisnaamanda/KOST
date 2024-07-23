import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final Room room;

  OrderPage({required this.room});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 1) quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan baru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  'https://via.placeholder.com/150',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('kamar ${widget.room.name}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Harga: Rp.${widget.room.price}/bln'),
                      Row(
                        children: [
                          IconButton(
                            onPressed: decrementQuantity,
                            icon: Icon(Icons.remove),
                          ),
                          Text('$quantity'),
                          IconButton(
                            onPressed: incrementQuantity,
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 16),
            Center(child: Text('Total Bayar', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            SizedBox(height: 8),
            Center(child: Text('Rp.${widget.room.price * quantity}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle payment logic
                },
                child: Text('Bayar'),
              ),
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

        currentIndex: 2, // Set the current index to Transaksi
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
