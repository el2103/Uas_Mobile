import 'package:flutter/material.dart';


class CardProfile extends StatelessWidget {
  final String namaDeveloper = "Salsa Sabila";
  final String npm = "2110020050";
  final String kelas = "5F SI Reg Malam Banjarmasin";
  final String kontak = "bellari0311@gmail.com";
  final String alamat = "Jl. Sultan Adam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Developer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildProfileInfo("Nama Developer", namaDeveloper),
            buildProfileInfo("NPM", npm),
            buildProfileInfo("Kelas", kelas),
            buildProfileInfo("Kontak", kontak),
            buildProfileInfo("Alamat", alamat),
          ],
        ),
      ),
    );
  }

  Widget buildProfileInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
