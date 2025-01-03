import 'package:cots_1/modules/board_page/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Loginpage.dart'; // Import halaman register

class OnboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo Gojek kiri atas dan logo lainnya di kanan atas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/Gojek_Logo.png', height: 30),
                  Image.asset('images/Language.png', height: 30),
                ],
              ),
              SizedBox(height: 24),

              // Gambar Onboard
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('images/ojek_depan.png', height: 200),
              ),
              SizedBox(height: 24),

              // Teks Selamat datang
              Text(
                'Selamat datang di gojek!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),

              // Deskripsi
              Text(
                'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 24),

              // Dots Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: CircleAvatar(
                              radius: 4,
                              backgroundColor:
                                  index == 0 ? Colors.green : Colors.grey),
                        )),
              ),
              SizedBox(height: 32),

              // Tombol Masuk
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke HomeView
                  Get.to(HomePage());
                },
                child: Text('Masuk'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(height: 16),

              // Tombol Daftar dengan Border
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green), // Border hijau
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigasi ke RegisterPage
                    Get.to(LoginPage());
                  },
                  child: Text(
                    'Belum ada akun?, Daftar dulu',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Teks Ketentuan
              Spacer(),
              Text(
                'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
