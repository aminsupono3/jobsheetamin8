import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Wrap(
            spacing: 2, // Minimal horizontal spacing
            runSpacing: 2, // Minimal vertical spacing
            children: [
              buildKotakDenganNama(
                  Color.fromARGB(255, 219, 11, 46), 100, "Amin Supono"),
              buildKotakDenganNama(
                  Color.fromARGB(255, 80, 11, 241)!, 70, "Amin Supono"),
              buildKotakDenganNama(
                  Color.fromARGB(255, 4, 231, 122), 50, "Amin Supono"),
              buildKotakDenganNama(
                  Color.fromARGB(255, 224, 104, 6)!, 90, "Amin Supono"),
              buildKotakDenganNama(
                  Color.fromARGB(255, 173, 215, 5)!, 110, "Amin Supono"),
              buildKotakDenganNama(
                  Color.fromARGB(255, 249, 18, 172)!, 30, "Amin Supono"),
            ],
          ),
        ),
      ),
    ),
  ));
}

Widget buildKotakDenganNama(Color warna, double ukuran, String nama) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        decoration: BoxDecoration(
          color: warna,
        ),
        height: ukuran,
        width: ukuran,
      ),
      const SizedBox(height: 2), // Minimal vertical spacing
      Text(
        nama,
        style: const TextStyle(
          fontSize: 12, // Reduced font size
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
