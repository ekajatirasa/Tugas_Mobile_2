import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

int _currentIndex = 0;

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Bantuan'),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cara Menggunakan Aplikasi',
                      style: TextStyle(fontSize: 25.0, color: Colors.black, fontWeight:FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Langkah 1 : Login \n'
                      'User Dapat Memasukkan Username dan Password yang Sesuai \n'
                      'Langkah 2 : Beranda \n'
                      'Setelah Melakukan Login User Masuk ke Beranda dan Memilih Menu yang Disediakan\n'
                      'Langkah 3 : Daftar Anggota \n'
                      'User Dapat Melihat Nama dan NIM Daftar Anggota Kelompok 6 \n'
                      'Langkah 4 : Kalkulator \n'
                      'User Dapat Menghitung Penjumlahan, Pengurangan, Perkalian, dan Pembagian Angka \n'
                      'Langkah 5 : Stopwatch \n'
                      'User Dapat Melakukan Perhitungan Waktu \n'
                      'Langkah 6 : Daftar Hobby \n'
                      'User Dapat Melihat Hobby Anggota Kelompok 6 \n'
                      'Langkah 7 : Logout \n'
                      'User Dapat Menekan Tombol Logout Untuk Keluar Dari Aplikasi \n'
                      'Langkah 8 : Bantuan \n'
                      'User Dapat Melihat Cara Penggunaan Aplikasi \n',
                      style: TextStyle(fontSize: 17.0, color: Colors.black, fontFamily: 'Lato'),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
