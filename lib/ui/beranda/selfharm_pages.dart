import 'package:flutter/material.dart';

class SelfHarmPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          'Self Harm Article',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 167, 206, 233),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 9, 2, 44)),
      ),
      body: WillPopScope(
        onWillPop: () async {
          // Menampilkan peringatan saat pengguna ingin kembali
          return await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("message for you"),
                  content: Text(
                      "Mengakhiri lebih susah daripada memulai, jika kamu sudah melakukan self harm, yang harus kamu lakukan berhenti perlahan, nikmatin prosesnya. \n\nHiraukan saja orang yang tidak berpengaruh dalam hidupmu, jangan biarkan siapapun menemani prosesmu. \n\nLOVE YOURSELF!."
                      "\n\n'Jangan pernah menyerah pada kebahagiaan, karena saat kebahagiaan hadir, itu adalah momen yang paling indah dalam hidup kita. - BTS'"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text("Batal"),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text("Kembali"),
                    ),
                  ],
                ),
              ) ??
              false;
        },
        child: Stack(
          children: [
            // Background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sh1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Content
            SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Section
                    Container(
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
                        child: Image.asset('assets/images/sh.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // Article Text Section
                    Text(
                      "Memahami Self Harm, Penyebab, Jenis, dan Cara Mengatasinya",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    Text(
                      "Oleh Tim Medis Siloam Hospitals",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Self harm adalah suatu tindakan yang dilakukan seseorang untuk menyakiti atau melukai dirinya sendiri. Perilaku ini digolongkan sebagai penyakit kejiwaan dan membutuhkan penanganan yang tepat. Beberapa contoh tindakan yang bisa dinyatakan sebagai self harm, seperti mencabut rambut atau membenturkan kepala ke dinding dengan kesadaran penuh. \n\nLantas, bagaimana cara mengatasi self harm? Mari simak mengenai pengertian, macam-macam, penyebab, dan cara mengatasi self harm selengkapnya melalui ulasan di bawah ini.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nApa itu Self Harm?",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nSelf harm adalah tindakan seseorang berupa menyakiti atau bahkan melukai dirinya sendiri. "
                      "\n\nBiasanya, self harm dilakukan oleh seseorang menggunakan benda tajam maupun tumpul yang berada di sekitarnya."
                      "\n\nSelain itu, self harm juga bisa berupa menyakiti dirinya sendiri secara langsung, seperti menjambak rambut, memukul diri sendiri, dan lain sebagainya."
                      "\n\nPerilaku self harm ini dilakukan secara sengaja atas kesadaran penderitanya dan bertujuan untuk mendapatkan kepuasan pribadi."
                      "\n\nYa, self harm adalah perilaku yang berkaitan dengan masalah kejiwaan. Jika terjadi cukup parah, perilaku self harm bahkan dapat mengancam nyawa orang tersebut."
                      "\n\nKarena cenderung membahayakan, self harm adalah perilaku yang perlu ditangani secara tepat dengan bantuan profesional.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nMacam-Macam Self Harm",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nTindakan self harm dikategorikan menjadi 3 macam berdasarkan tingkat keparahannya. Adapun penjelasan dari macam-macam self harm adalah sebagai berikut:",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n1. Major self mutilation",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Tingkatan self harm paling parah dan dilakukan dengan melukai dirinya yang bahkan bisa mengancam nyawa. "
                      "\n\nContoh major self mutilation yaitu memotong jari, mencungkil bola mata, dan lain sebagainya."
                      "\n\nTindakan ini biasanya dilakukan oleh penderita gangguan mental psikosis.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n2. Stereotypic self injury",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Stereotypic self injury merupakan tindakan self harm yang dilakukan secara berulang-ulang namun tingkat keparahannya tidak seintens major self mutilation."
                      "\n\nUmumnya, penderita kelainan mental autisme akan melakukan self harm jenis ini."
                      "\n\nContoh stereotypic self injury adalah memukul anggota tubuh atau membenturkan kepalanya ke tembok berulang kali.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n3. Superficial self mutilation",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Jenis self harm berikutnya yaitu superficial self mutilation dengan tingkat keparahan cenderung lebih ringan dibandingkan jenis lainnya. "
                      "\n\nWalau begitu, superficial self mutilation yang cenderung ringan ini tetap jangan diabaikan."
                      "\n\nTindakan superficial self mutilation biasanya berupa menyayat kulit menggunakan benda tajam, menarik rambut sekuat tenaga, dan lain sebagainya.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nPenyebab Self Harm",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nSelf harm adalah perilaku menyakiti diri sendiri yang disebabkan oleh beberapa hal. Hal yang dapat menyebabkan seseorang melakukan self harm di antaranya:"
                      "\n\n 1. Memiliki trauma akan peristiwa tertentu di masa lalu. Dari kondisi tersebut, self harm bagi seseorang yang melakukannya akan dianggap sebagai cara untuk melupakan kejadian traumatis tersebut."
                      "\n\n 2. Memiliki gangguan mental tertentu, seperti depresi, psikosis, autisme, dan lain sebagainya."
                      "\n\n 3. Merasa tertekan dan memendam perasaan negatif dalam kurun waktu yang lama. Misalnya, tekanan yang muncul dari masalah keluarga akan menimbulkan perasaan negatif pada seseorang. Pada kondisi ini, penderita self harm cenderung melukai dirinya sendiri untuk meluapkan emosi atau perasaan negatifnya."
                      "\n\n 4. Tidak dapat mengekspresikan dirinya dengan baik yang berujung stres dan depresi.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nCara Mengatasi Self Harm",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nKarena umumnya dilakukan untuk melepaskan emosi terpendam, cara mengatasi self harm adalah dengan mengalihkan perhatian mereka ke hal-hal positif. Contohnya, bila penderita memiliki keinginan untuk menyakiti diri sendiri, segeralah mengalihkan keinginan tersebut dengan berolahraga untuk melepas emosi."
                      "\n\nSelain itu, olahraga juga dapat membantu memperbaiki suasana hati yang sedang tidak baik-baik saja. Memang, menghentikan self harm dengan cara yang satu ini terkesan sedikit sulit, terlebih jika penderitanya sudah terbiasa menyakiti diri sendiri."
                      "\n\nUntuk mendapatkan penanganan self harm yang tepat, penderita sebaiknya berdiskusi dengan Psikiatri di Siloam Hospitals terdekat. Melakukan konsultasi dapat membantu mengenali pemicu awal self harm sekaligus cara yang tepat untuk mengatasinya, yang bisa melalui beberapa terapi tertentu. Selain itu, dengan berkonsultasi, penderita dapat  lebih mengenal diri sendiri dan bisa meluapkan emosi negatif."
                      "\n\nJika Anda berhalangan untuk datang ke rumah sakit, Anda dapat memanfaatkan layanan Telekonsultasi yang memungkinkan Anda untuk berkonsultasi secara virtual dengan dokter sekaligus mendapatkan resep obat-obatan tanpa harus keluar rumah. Namun, jika diresepkan obat-obatan tertentu, seperti antidepresan dan antipsikotik, pasien perlu mengambilnya secara langsung atau self pick up.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
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
}
