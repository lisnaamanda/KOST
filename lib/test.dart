import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
FirebaseFirestore firestore = FirebaseFirestore.instance;

try {
  // Coba ambil data dari Firestore (ganti 'collectionName' dan 'documentId')
  DocumentSnapshot snapshot = await firestore
      .collection('collectionName')
      .doc('documentId')
      .get();

  if (snapshot.exists) {
    print("Koneksi Firestore berhasil!");
    print(snapshot.data()); 
  } else {
    print("Dokumen tidak ditemukan.");
  }
} catch (e) {
  print("Koneksi Firestore gagal: $e");
}
