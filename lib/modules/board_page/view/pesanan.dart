import 'package:flutter/material.dart';

class PesananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          'Belum ada pesanan',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
