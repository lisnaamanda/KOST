import 'package:flutter/material.dart';

class DataKostPage extends StatelessWidget {
  const DataKostPage({super.key});

  @override
  Widget build(BuildContext context) {
    var orders;
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Penghuni Kost C&C'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle data addition
              },
              child: Text('Tambah Data'),
            ),
            SizedBox(height: 16),
            DataTable(
              columns: [
                DataColumn(label: Text('NO')),
                DataColumn(label: Text('NAMA')),
                DataColumn(label: Text('ALAMAT')),
                DataColumn(label: Text('STATUS')),
                DataColumn(label: Text('LUNAS')),
              ],
              rows: List<DataRow>.generate(
                orders.length,
                (index) => DataRow(
                  cells: [
                    DataCell(Text((index + 1).toString())),
                    DataCell(Text(orders[index].customerName)),
                    DataCell(Text(orders[index].address)),
                    DataCell(Text(orders[index].status)),
                    DataCell(Switch(
                      value: orders[index].status == 'Completed',
                      onChanged: (value) {
                        // Handle status change
                      },
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle save data
                  },
                  child: Text('Simpan'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle edit data
                  },
                  child: Text('Edit data'),
                ),
              ],
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
          BottomNavigationBarItem(icon: Icon(Icons.data_usage), label: 'Data Kost'),
        ],
        currentIndex: 4, // Set the current index to Data Kost
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

class Order {
  final String name;
  final String email;
  final String customerName;
  final String address;
  final int price;
  final int quantity;
  String status;

  Order({
    required this.name,
    required this.email,
    required this.customerName,
    required this.address,
    required this.price,
    required this.quantity,
    this.status = 'Mahasiswa',
  });
}
