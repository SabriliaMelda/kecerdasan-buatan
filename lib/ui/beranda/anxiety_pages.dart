import 'package:flutter/material.dart';

class AnxietyPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          'Anxiety Article',
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
                      "Hanya ada satu cara menuju kebahagiaan, yaitu berhenti mengkhawatirkan hal-hal yang berada di luar kuasa kita."
                      "\n\nPikiranmu akan menjawab sebagian besar pertanyaan jika dirimu mau belajar untuk rileks dan menunggu jawabannya."
                      "\n\n'Kebahagiaan bukanlah sesuatu yang kita cari, tetapi sesuatu yang kita ciptakan. - BTS'"),
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
                  image: AssetImage('assets/images/ax1.jpg'),
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
                        child: Image.asset('assets/images/ax.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // Article Text Section
                    Text(
                      "Anxiety Disorder - Penyebab, Gejala, Jenis, dan Pengobatannya",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    Text(
                      "Oleh dr. Anastasia Ratnawati Biromo, SpKJ",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Gangguan kecemasan atau anxiety disorder adalah salah satu gangguan mental saat seseorang mengalami kecemasan secara berlebihan. Meski perasaan cemas adalah hal yang normal, jika kecemasan terus-menerus mengganggu dan menghambat aktivitas sehari-hari, hal ini yang patut untuk diwaspadai."
                      "Oleh sebab itu, mari simak informasi selengkapnya tentang apa itu anxiety disorder atau gangguan kecemasan hingga pengobatannya melalui artikel berikut.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nApa itu Anxiety Disorder?",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nSecara garis besar, anxiety disorder adalah gangguan suasana perasaan seperti depresi, sering ada bersamaan dengan depresi, dan bila tidak segera diatasi maka berpotensi memburuk seiring berjalannya waktu."
                      "\n\nJika tidak ditangani dengan baik, anxiety disorder dapat mengganggu aktivitas sehari-hari dan menurunkan kualitas hubungan pengidap dengan orang-orang terdekat, bahkan dengan pasangan dan anak-anaknya sendiri.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nPenyebab Anxiety Disorder",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nHingga kini belum ada yang secara pasti berhasil menjelaskan penyebab anxiety disorder. Namun, secara umum ada beberapa faktor yang sangat berpengaruh dalam peningkatan risiko gangguan kecemasan atau anxiety disorder adalah faktor genetik, faktor biologis (senyawa kimia dalam otak), lingkungan, dan stres.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nGejala Anxiety Disorder",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nSementara untuk gejala anxiety disorder bisa dikenali melalui beberapa tanda berikut ini:"
                      "\n1. Perasaan cemas, takut, dan khawatir yang berlebihan dan tidak wajar untuk sebagian besar waktu."
                      "\n2. Adanya kesulitan untuk mengontrol kecemasan yang berlebihan tersebut."
                      "\n3. Muncul perubahan perilaku dan kesulitan untuk menjalankan aktivitas maupun fungsi dalam kehidupan."
                      "\n4. Merasa gelisah tanpa sebab dan mudah lelah."
                      "\n5. Kesulitan untuk berpikir dan berkonsentrasi."
                      "\n6. Sulit tidur selama berhari-hari, berminggu-minggu (atau lebih lama dari itu). Seringnya, gangguan tidur ini dipicu oleh perasaan khawatir tanpa sebab."
                      "\n7. Mengalami ketegangan di otot, seperti otot rahang yang mengeras, otot tangan, otot perut, dan lainnya. Kondisi ini umumnya akan disadari setelah beberapa hari."
                      "\n8. Mengalami serangan panik tanpa penyebab yang jelas. Kondisi ini kerap disertai dengan keluarnya keringat dingin, jantung berdebar, mual, rasa ingin pingsan, nyeri di bagian perut atau dada, rasa kehilangan kontrol diri, dan mendadak lemas hingga pingsan.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nJenis-Jenis Anxiety Disorder",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nAnxiety disorder adalah gangguan kecemasan yang dapat dibedakan menjadi beberapa jenis, di antaranya:",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n1. Generalized Anxiety Disorder",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Sesuai dengan namanya, generalized anxiety disorder adalah gangguan kecemasan menyeluruh yang ditandai dengan perasaan cemas atau khawatir terhadap berbagai hal yang tidak spesifik, mulai dari kecemasan terhadap kondisi kesehatan, pekerjaan, sampai reaksi berlebihan untuk hal-hal yang sederhana, seperti berinteraksi dengan orang lain. "
                      "\n\nGangguan kecemasan menyeluruh ini biasanya dirasakan hampir setiap hari dan terus-menerus hingga lebih dari 6 bulan. Akibat dari gangguan kecemasan ini, Anda akan kesulitan untuk berinteraksi dengan orang lain, menjalani aktivitas, dan lain sebagainya."
                      "\n\nSelain munculnya rasa cemas berlebih untuk berbagai hal, penderita gangguan kecemasan umumnya bisa merasakan beberapa gejala fisik, seperti tegang, sakit kepala, mual, sulit berkonsentrasi, kesulitan tidur, sesak napas, dan mudah merasa lelah.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n2. Fobia",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Fobia adalah salah satu gangguan cemas yang ditandai ketakutan hebat terhadap hal-hal yang tidak membahayakan diri atau seharusnya tidak menimbulkan rasa takut, seperti misalnya takut berada di ruangan gelap, takut melihat pola berlubang, takut terhadap makanan tertentu, takut terhadap warna tertentu, dan lainnya."
                      "\n\nIndividu dengan fobia umumnya akan menghindari hal-hal yang bisa memicu fobianya muncul. Misalnya, jika takut dengan warna merah, mereka akan berusaha untuk menghindari apa pun yang berhubungan dengan warna merah. Atau, bila mereka mampu memaksa diri menghadapi hal tersebut, maka mereka akan menghadapinya dengan penderitaan yang hebat."
                      "\n\nSaat melihat hal yang sangat ditakuti, individu dengan fobia akan bereaksi secara berlebihan, misalnya dengan berlari tanpa arah, bersembunyi, dan menghindari hal yang sangat ditakuti tersebut. Dalam kondisi puncak, fobia dapat membuat jantung berdegup kencang, keluar keringat dingin, hingga pingsan.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n3. Gangguan Kecemasan Sosial",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Gangguan kecemasan sosial sebenarnya masuk dalam dalam satu jenis fobia, yakni fobia sosial. Umumnya mereka yang mengalami gangguan kecemasan sosial akan mengalami kecemasan atau ketakutan yang hebat pada situasi sosial yaitu mereka merasa akan dinilai oleh orang lain."
                      "\n\nUmumnya, perasaan khawatir ini dipicu oleh ketakutan atau malu saat berada di keramaian, takut dipandang salah, takut salah bicara, dan sebagainya. Dalam berkomunikasi, mereka akan cenderung mengalihkan wajah atau menghindari kontak mata dengan lawan bicara.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n4. Post-Traumatic Stress Disorder (PTSD)",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Post-traumatic stress disorder atau gangguan kecemasan pasca trauma yang kerap muncul pada seseorang yang mengalami kejadian traumatis, misalnya pernah menjadi korban perampokan, pernah cedera parah, atau berada di tengah situasi yang mengancam nyawa, seperti berada di medan perang."
                      "\n\nDalam kebanyakan kasus, orang yang mengalami PTSD akan terus berada dalam moda bahaya dan selalu berada dalam kondisi siap siaga. Misalnya, orang yang pernah berada di daerah konflik atau korban perang, akan langsung ketakutan saat melihat seragam tentara.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),

                    Text(
                      "\n\n5. Gangguan Panik)",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Gangguan panik merupakan sebuah kondisi yang ditandai dengan adanya episode serangan panik berulang yang muncul tiba-tiba, tanpa ada penyebab jelas, bisa terjadi di mana saja dan kapan saja. Kondisi ini bisa terjadi secara berulang dan akan mengganggu aktivitas harian maupun hubungan dengan orang lain."
                      "\n\nSaat gangguan ini muncul, biasanya penderita akan merasakan gejala yang hebat berupa jantung berdebar, sesak napas, keringat dingin, tubuh lemas dan gemetar, mual, dan pandangan gelap seperti akan jatuh pingsan."
                      "\n\nKarena sifatnya yang dapat muncul kapan saja dan di mana saja, penderita gangguan cemas biasanya akan menarik diri dari kehidupan sosial, membatasi aktivitas harian, dan lebih suka menghabiskan waktu di dalam kamar.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),

                    Text(
                      "\n\n6. Obsessive Compulsive Disorder (OCD))",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Obsessive compulsive disorder adalah gangguan kecemasan yang ditandai dengan adanya pikiran obsesif terus menerus dan perilaku berulang yang bertujuan meredakan pikiran obsesif tersebut. Misalnya, sering mengulang mencuci tangan karena khawatir belum bersih dari kuman."
                      "\n\nSelain itu, mereka yang mengalami OCD akan cenderung mengatur sesuatu dengan pola yang menurutnya baik. Menurut World Health Center, gangguan kecemasan ini lebih banyak terjadi di negara-negara maju dan cenderung diderita anak muda."
                      "\n\nMeski kebanyakan orang menyadari adanya gangguan ini, namun OCD sangat sulit dikendalikan dan bisa kambuh kapan saja. Dalam kebanyakan kasus, gangguan kecemasan ini kerap diiringi dengan kondisi seperti bipolar dan gangguan depresi mayor.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nPengobatan Anxiety Disorder",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nPengobatan anxiety disorder disesuaikan dengan kondisi pasien dan jenis kecemasannya. Namun, secara umum cara mengatasi anxiety disorder adalah kombinasi dari obat (antidepresan, anticemas) dan psikoterapi seperti terapi kognitif perilaku akan memberikan hasil yang baik pada penderita gangguan cemas."
                      "\n\nSelain itu, menerapkan pola hidup sehat seperti berhenti merokok, berhenti mengkonsumsi kafein, istirahat yang cukup, aktif berolahraga, dan meditasi juga diharapkan dapat membantu meringankan gangguan kecemasan."
                      "\n\nPerlu diingat, semua program pengobatan anxiety disorder adalah hal yang harus dilakukan secara terukur dan wajib didampingi oleh profesional kesehatan. Pemberian obat-obatan dilakukan di bawah pengawasan profesional kesehatan agar aman bagi pasien, tidak menimbulkan risiko ketergantungan, maupun risiko penyalahgunaan obat."
                      "\n\nJika Anda atau kerabat mengalami gejala yang mengarah pada anxiety disorder, segera konsultasikan dengan Psikiatri untuk mendapatkan penanganan medis yang tepat. Tindakan awal ini sangat penting untuk mencegah kondisi yang lebih serius di kemudian hari. Atau Anda bisa memanfaatkan layanan Telekonsultasi yang memungkinkan Anda untuk berkonsultasi dengan dokter secara virtual.",
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
