import 'package:appakar/shared/shared.dart';
import 'package:flutter/material.dart';

class AboutPages extends StatefulWidget {
  @override
  _AboutPagesState createState() => _AboutPagesState();
}

class _AboutPagesState extends State<AboutPages> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 188, 220, 243),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/c.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 200,
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  Image.asset('assets/images/magic.png'),
                  Image.asset('assets/images/1.jpg'),
                  Image.asset('assets/images/2.jpg'),
                  Image.asset('assets/images/3.jpg'),
                  Image.asset('assets/images/4.jpg'),
                  Image.asset('assets/images/5.jpg'),
                  Image.asset('assets/images/6.jpg'),
                  Image.asset('assets/images/7.jpg'),
                  Image.asset('assets/images/8.jpg'),
                  Image.asset('assets/images/BTS.png'),
                ],
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    if (_currentPage > 0) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    if (_currentPage < 9) {
                      // Updated condition to reflect the correct number of images
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  Text(
                    'Company Profile',
                    style: TextStyle(
                      color: Color.fromARGB(255, 73, 1, 81),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Magic Shop adalah sebuah platform yang bertujuan untuk memberikan bantuan kepada individu dalam menghadapi berbagai masalah sehari-hari. Kami hadir untuk mendengarkan dan memberikan dukungan kepada Anda.\n\nAdmin kami adalah seorang penggemar BTS yang juga dikenal sebagai ARMY. Kami percaya bahwa musik memiliki kekuatan untuk menyatukan orang dari berbagai latar belakang dan memberikan inspirasi untuk hidup yang lebih baik.'
                    '\n\nMagic Shop adalah salah satu lagu BTS yang dirilis pada tahun 2018 sebagai bagian dari album Love Yourself: Tear. Lagu ini memiliki makna yang dalam dan menyentuh, yang sangat berkaitan dengan hubungan antara BTS dan para penggemar mereka, yang dikenal sebagai ARMY.'
                    '\n\nMagic Shop adalah lagu yang menceritakan tentang tempat magis di mana seseorang dapat menemukan penghiburan dan pelarian dari kesulitan hidup. Tempat ini diibaratkan sebagai "toko ajaib" di mana BTS sebagai penjual, memberikan dukungan emosional dan kekuatan kepada ARMY. Lirik lagu ini menyampaikan pesan bahwa meskipun hidup penuh dengan tantangan dan rasa sakit, ada tempat di mana seseorang dapat merasa aman dan didengar.'
                    '\n\nLagu ini terinspirasi oleh terapi psikologis yang dikenal sebagai "Imaginary Place" atau "Imaginary Shop". Konsep ini digunakan untuk membantu seseorang menemukan kedamaian dan kenyamanan dengan membayangkan tempat yang aman dan menenangkan. BTS menggunakan konsep ini untuk menciptakan lagu yang bisa menjadi tempat pelarian bagi para penggemar mereka ketika mereka merasa sedih atau putus asa.'
                    '\n\nMagic Shop adalah lagu yang menunjukkan cinta dan dedikasi BTS kepada penggemar mereka. Lagu ini adalah pengingat bahwa di tengah-tengah kesulitan dan tantangan hidup, selalu ada tempat di mana kita dapat merasa didukung dan dicintai.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 121, 47, 141),
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 36),
                  Text('All Right Reserved @2024 \nMin Yoora',
                      textAlign: TextAlign.center,
                      style: whiteTextStyle.copyWith(
                          color: Color.fromARGB(255, 121, 47, 141),
                          fontSize: 11)),
                  SizedBox(height: defaultMargin),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
