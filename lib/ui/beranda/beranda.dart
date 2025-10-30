import 'package:appakar/ui/beranda/artikel_pages.dart';
import 'package:flutter/material.dart';
import '../../widget/sidebar.dart';
import 'diagnosa_pages.dart';
import 'sesicurhat_pages.dart';
import 'about_pages.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text(
          'Beranda Magic Shop',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {
              // Tambahkan logika untuk notifikasi jika diperlukan
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/surf.jpg'), // Ganti dengan path gambar latar belakang Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground Content
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMenuItem(context, 'Artikel', Icons.article, '/artikel'),
                _buildMenuItem(context, 'Diagnosa', Icons.healing, '/diagnosa'),
                _buildMenuItem(
                    context, 'Sesi Curhat', Icons.chat, '/sesicurhat'),
                _buildMenuItem(context, 'About', Icons.more_horiz, '/about'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, String title, IconData icon, String route) {
    return GestureDetector(
      onTap: () {
        // Tambahkan logika untuk menavigasi ke halaman sesicurhat_pages.dart
        if (route == '/diagnosa') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DiagnosaPages()),
          );
        } else if (route == '/artikel') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ArtikelPages()),
          );
        } else if (route == '/sesicurhat') {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Anyeong!'),
              content: Text(
                  'Selamat datang di sesi curhat bersama mimin Magic Shop. Ceritakan semuanya, mimin akan mendengarkan dan berusaha memberi solusi yang terbaik!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Tutup dialog
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SesiCurhatPages()),
                    );
                  },
                  child: Text('Mulai Curhat'),
                ),
              ],
            ),
          );
        } else if (route == '/about') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutPages()),
          );
        } else {
          Navigator.pushNamed(context, route);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.blue,
            ),
            SizedBox(width: 20.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
