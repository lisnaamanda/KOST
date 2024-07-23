import 'package:flutter/material.dart';
import 'login.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Implement your logic for back button if needed
          },
        ),
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Implement your logic for edit profile
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person, size: 40),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Robiatul adawiyah',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Profil saya'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Alamat'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to address page
                    },
                  ),
                  ListTile(
                    title: Text('Email'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to email page
                    },
                  ),
                  ListTile(
                    title: Text('No HP'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to phone number page
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Umum'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Pusat Bantuan'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to help center
                    },
                  ),
                  ListTile(
                    title: Text('Bahasa'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to language settings
                    },
                  ),
                  ListTile(
                    title: Text('Pengaturan'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Implement navigation to settings
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement your logout logic here
                  // For example, clear the user session and navigate to login page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text('Log out'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
