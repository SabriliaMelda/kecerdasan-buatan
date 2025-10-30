import 'package:flutter/material.dart';
import 'selfharm_pages.dart'; // Import the selfharm_pages.dart file
import 'anxiety_pages.dart'; // Import the anxiety_pages.dart file
import 'psychotic_pages.dart'; // Import the psychotic_pages.dart file

class ArtikelPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/d2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  SizedBox(
                      height: 120), // Beri jarak untuk navbar tetap di atas
                  _buildHorizontalImageListSelfHarm(),
                  SizedBox(height: 25),
                  _buildMenuItem(
                      context, 'Self Harm', Icons.healing, '/selfharm'),
                  SizedBox(height: 25),
                  _buildHorizontalImageListAnxiety(),
                  SizedBox(height: 25),
                  _buildMenuItem(context, 'Anxiety', Icons.warning, '/anxiety'),
                  SizedBox(height: 25),
                  _buildHorizontalImageListPsychoticDisorder(),
                  SizedBox(height: 25),
                  _buildMenuItem(context, 'Psychotic Disorder', Icons.warning,
                      '/psychoticdisorder'),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/d2.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 25, 10, 232).withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Selamat Datang di",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 9, 2, 44)),
                        ),
                        SizedBox(height: 5), // Jarak antara dua teks
                        Text(
                          "Article Magic Shop",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color.fromARGB(255, 9, 2, 44)),
                        ),
                      ],
                    ),
                    Spacer(),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,
                            size: 30, color: Color.fromARGB(255, 9, 2, 44)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalImageListSelfHarm() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildFloatingImage('assets/images/gambar4.jpg'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar3.png'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar2.png'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar1.jpg'),
          // Tambahkan lebih banyak gambar sesuai kebutuhan
        ],
      ),
    );
  }

  Widget _buildHorizontalImageListAnxiety() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildFloatingImage('assets/images/gambar5.jpeg'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar6.jpg'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar7.png'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar8.jpeg'),
          // Tambahkan lebih banyak gambar sesuai kebutuhan
        ],
      ),
    );
  }

  Widget _buildHorizontalImageListPsychoticDisorder() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildFloatingImage('assets/images/gambar12.jpg'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar11.jpg'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar10.jpeg'),
          SizedBox(width: 10),
          _buildFloatingImage('assets/images/gambar9.jpg'),
          // Tambahkan lebih banyak gambar sesuai kebutuhan
        ],
      ),
    );
  }

  Widget _buildFloatingImage(String assetPath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(assetPath, height: 200.0, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, String title, IconData icon, String route) {
    return GestureDetector(
      onTap: () {
        if (route == '/selfharm') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelfHarmPages()),
          );
        } else if (route == '/anxiety') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AnxietyPages()),
          );
        } else if (route == '/psychoticdisorder') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PsychoticPages()),
          );
        } else {
          // Tambahkan navigasi untuk halaman lain jika diperlukan
        }
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 0, 30, 255).withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2),
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
