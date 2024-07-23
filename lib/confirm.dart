import 'package:flutter/material.dart';

import 'datakost.dart';

class ConfirmationPage extends StatelessWidget {
  final int total;

  const ConfirmationPage({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Confirmation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Order Successful!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text('Total Payment: Rp.$total', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminTransactionPage extends StatelessWidget {
  const AdminTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var orders;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Transactions'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text(order.customerName),
            subtitle: Text('Room: ${order.name}, Total: Rp.${order.price * order.quantity}'),
            trailing: Text(order.status),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetailPage(order: order),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class OrderDetailPage extends StatelessWidget {
  final Order order;

  const OrderDetailPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Customer: ${order.customerName}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Email: ${order.email}'),
            Text('Address: ${order.address}'),
            Text('Room: ${order.name}'),
            Text('Price: Rp.${order.price}/bln'),
            Text('Quantity: ${order.quantity}'),
            Text('Total: Rp.${order.price * order.quantity}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle order status update
                  Navigator.pop(context);
                },
                child: const Text('Mark as Completed'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
