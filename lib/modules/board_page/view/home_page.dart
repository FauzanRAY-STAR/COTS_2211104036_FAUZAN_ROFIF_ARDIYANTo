import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar menu.png dengan ukuran seperti promo card
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'images/Menu.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Konten lainnya
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search Bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 8),
                          Text(
                            'Find services, food, or places',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),

                    // GoPay Section
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('gopay',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Rp7.434'),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),

                    // Layanan Gojek
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        _buildServiceIcon('images/Menu.png', 'GoRide'),
                      ],
                    ),
                    SizedBox(height: 16),

                    // XP dan Promo
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text('121 XP to your next treasure >'),
                    ),
                    SizedBox(height: 16),

                    // Restos and Best-seller
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Restos near me',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Best-seller in my area',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    // Card Promo
                    _buildPromoCard(
                      'images/makinseru.png',
                      'Makin Seru',
                      'Aktifkan & Sambungkan GoPay & GoPaylater di Tokopedia',
                    ),
                    SizedBox(height: 16),
                    _buildPromoCard(
                      'images/makinseru1.png',
                      'Makin Seru',
                      'Sambungin Akun ke Tokopedia, Banyakin Untung',
                    ),
                    SizedBox(height: 16),
                    _buildPromoCard(
                      'images/makinseru2.png',
                      'Makin Seru',
                      'Promo Belanja Online 10.10: Cashback hingga Rp100.000',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildServiceIcon(String imagePath, String label) {
    return Column(
      children: [
        Image.asset(imagePath, height: 40),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  Widget _buildPromoCard(String imagePath, String title, String description) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
