import 'package:flutter/material.dart';

class PsychoticPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          'Psychotic Disorder Article',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 148, 194, 225),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 9, 2, 44)),
      ),
      body: WillPopScope(
        onWillPop: () async {
          // Menampilkan peringatan saat pengguna ingin kembali
          return await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Peringatan"),
                  content: Text(
                      "'Hidup itu seperti piano; kunci putih melambangkan kebahagiaan dan hitam menunjukkan kesedihan. Namun, saat kamu menjalani perjalanan hidup, ingatlah bahwa tuts hitam juga menciptakan musik.' - Ehssan"
                      "\n\n'Setiap langkah kecil menuju kebahagiaan adalah langkah menuju kesuksesan. - BTS'"),
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
                  image: AssetImage('assets/images/psy1.jpg'),
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
                        child: Image.asset('assets/images/psy.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // Article Text Section
                    Text(
                      "Gangguan Psikotik - Penyebab, Jenis, Gejala, & Pengobatannya",
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
                      "Psychotic disorders atau gangguan psikotik adalah sekelompok gangguan mental serius yang dapat memengaruhi pemikiran, perilaku, dan persepsi seseorang. Kondisi ini dapat membuat penderitanya merasa kesulitan untuk berpikir jernih, berkomunikasi secara efektif, serta berperilaku dengan baik."
                      "\n\nSelain itu, kondisi ini juga kerap menyebabkan penderitanya tidak dapat membedakan realita dan imajinasi. Untuk lebih jelasnya, mari simak ulasan lengkap mengenai gangguan psikotik melalui artikel berikut ini.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nApa itu Gangguan Psikotik?",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Psychotic disorders atau gangguan psikotik adalah salah satu jenis gangguan jiwa serius yang menyebabkan seseorang berpikir dan memiliki persepsi tidak wajar yang membuat mereka mengalami kesulitan untuk bisa terhubung dengan kenyataan dan tidak mampu menjalani kehidupan sehari-hari."
                      "Kondisi ini sering kali membuat penderitanya mengalami halusinasi dan delusi dalam melihat suatu peristiwa yang sebenarnya tidak pernah ada atau terjadi.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nJenis Gangguan Psikotik",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Secara umum, gangguan psikotik dapat dibedakan menjadi beberapa jenis, di antaranya sebagai berikut."
                      "\n\n1. Skizofrenia: Gangguan mental yang membuat penderitanya merasa kesulitan membedakan realita dan khayalan. Umumnya, seseorang dapat dikatakan terdiagnosis gangguan skizofrenia apabila mereka mengalami halusinasi dan delusi yang bertahan selama lebih dari 6 bulan berturut-turut."
                      "\n2. Schizoaffective disorder: Gangguan mental yang ditandai dengan delusi serta satu atau lebih gejala gangguan suasana hati (mood), seperti depresi atau gangguan bipolar."
                      "\n3. Schizophreniform disorder: Kondisi yang membuat penderitanya mengalami gejala dari gangguan skizofrenia namun dengan jangka waktu yang lebih pendek, yaitu sekitar 1–6 bulan."
                      "\n4. Gangguan delusi: Gangguan mental yang membuat penderitanya memiliki khayalan dengan melibatkan situasi di dunia nyata. Misalnya, penderita gangguan delusi dapat merasa seperti sedang diikuti oleh seseorang, memiliki penyakit tertentu, atau menjadi incaran orang lain. Kondisi ini dapat berlangsung setidaknya selama 1 bulan."
                      "\n5. Brief psychotic disorder: Kondisi yang membuat seseorang mengalami gejala psikosis secara tiba-tiba dan dalam jangka waktu pendek, biasanya kurang dari 1 bulan. Kondisi ini kerap terjadi sebagai bentuk respons seseorang setelah mengalami kejadian traumatis."
                      "\n6. Shared psychotic disorder (folie a deux): Terjadi ketika seseorang mengalami delusi akibat berhubungan dengan orang yang memiliki kondisi serupa."
                      "\n7. Substance-induced psychotic disorder: Gangguan mental yang disebabkan oleh penggunaan obat-obatan, seperti halusinogen atau kokain."
                      "\n8. Gangguan psikotik karena kondisi medis tertentu: Halusinasi dan delusi yang terjadi karena seseorang menderita kondisi medis tertentu yang memengaruhi kerja serta fungsi otak, misalnya seperti cedera kepala atau tumor otak."
                      "\n9. Parafrenia (late onset schizophrenia/late-life psychosis): Kondisi yang menimbulkan gejala menyerupai gangguan skizofrenia, umumnya terjadi pada lansia dan diduga berkaitan dengan gangguan neurologis.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nPenyebab Gangguan Psikotik",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Hingga kini, penyebab gangguan psikotik masih belum diketahui secara pasti. Namun, para ahli menduga bahwa kondisi ini dapat dipicu oleh beberapa faktor, seperti:"
                      "\n\n1.Faktor genetik atau keturunan."
                      "\n2. Stres berkepanjangan."
                      "\n3. Penyalahgunaan NAPZA."
                      "\n4. Mengalami kejadian traumatis."
                      "\n5. Berjenis kelamin pria. Pria dinilai lebih berisiko mengalami gangguan psikotik daripada wanita."
                      "\n6. Masalah pada bagian otak yang mengontrol pemikiran, persepsi, dan motivasi.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),

                    Text(
                      "\n\nGejala Gangguan Psikotik",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Pada dasarnya, gangguan psikotik dapat menimbulkan dua gejala utama, yaitu halusinasi dan delusi. Berikut penjelasan selengkapnya."
                      "\n\n - Halusinasi, yaitu kondisi ketika seseorang melihat, mendengar, mencium, atau merasakan sesuatu yang sebenarnya tidak ada atau tidak terjadi. Misalnya, penderita gangguan psikotik dapat merasakan sensasi sentuhan pada kulit meskipun tidak ada yang menyentuhnya."
                      "\n\n - Delusi, yaitu kondisi yang membuat seseorang merasa sangat yakin pada suatu hal yang sebenarnya tidak nyata. Sebagai contoh, penderita gangguan ini merasa yakin jika makanannya mengandung racun mematikan, bahkan setelah orang lain sudah membuktikan bahwa hal tersebut tidak benar."
                      "\n\nSelain halusinasi dan delusi, sejumlah gejala lain dari gangguan psikotik adalah sebagai berikut."
                      "\n\n1. Berbicara melantur."
                      "\n2. Linglung."
                      "\n3. Berperilaku tidak wajar atau bahkan cenderung membahayakan orang lain maupun diri sendiri."
                      "\n4. Enggan untuk menjaga kebersihan diri."
                      "\n5. Kehilangan minat untuk melakukan aktivitas sehari-hari."
                      "\n6. Memiliki masalah pada kehidupan sosial, sekolah, atau pekerjaan."
                      "\n7. Perubahan suasana hati secara drastis."
                      "\n8. Bersikap dingin dan tidak dapat menunjukkan ekspresi emosi dengan baik.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),

                    Text(
                      "\n\nDiagnosis Gangguan Psikotik",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Sebelum menegakkan diagnosis gangguan psikotik, dokter dapat melakukan wawancara medis (anamnesis) dan pemeriksaan fisik dengan pasien untuk mengetahui keluhan, riwayat kesehatan, serta riwayat penyakit keluarga pasien."
                      "\n\nDokter juga dapat melakukan tes darah dan tes pencitraan pada otak, seperti MRI. Tes darah atau pemeriksaan laboratorium bertujuan untuk mengetahui jenis obat-obatan yang tepat sesuai kondisi pasien. Sementara itu, pemeriksaan pencitraan bertujuan untuk mendeteksi kondisi medis tertentu pada pasien yang bisa memicu terjadinya gangguan psikotik."
                      "\n\nJika tidak menemukan kondisi medis tertentu, dokter dapat merujuk pasien kepada psikolog atau psikiater untuk melanjutkan upaya penegakkan diagnosis gangguan psikotik. Nantinya, psikolog atau psikiater dapat mengevaluasi kondisi psikologis pasien dan menyesuaikannya dengan kriteria diagnostik pada buku Diagnostic and Statistical Manual of Mental Disorders 5th Edition (DSM-5).",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\nPengobatan Gangguan Psikotik ",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nDalam kebanyakan kasus, dokter dapat menangani gangguan mental ini dengan mengombinasikan farmakoterapi dan psikoterapi. Berikut masing-masing penjelasannya.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n1. Farmakoterapi",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Farmakoterapi adalah prosedur medis yang menggunakan obat-obatan untuk membantu mengatasi gangguan kesehatan. Dalam kasus psychotic disorder, psikiater dapat meresepkan obat antipsikotik untuk membantu mengendalikan gejala, seperti delusi dan halusinasi."
                      "\n\nAdapun beberapa jenis obat antipsikotik yang umum digunakan untuk menangani psychotic disorder adalah:"
                      "\n\nFluphenazine."
                      "\n\nHaloperidol."
                      "\n\nChlorpromazine."
                      "\n\nThioridazine."
                      "\n\nAripiprazole."
                      "\n\nBrexpiprazole."
                      "\n\ndan lain-lain.",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Text(
                      "\n\n2. Psikoterapi",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 9, 2, 44),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\nPsikoterapi adalah pendekatan psikologis melalui berbagai metode untuk membantu mengatasi permasalahan kejiwaan pasien. Beberapa jenis psikoterapi yang dapat dilakukan untuk menangani psychotic disorder adalah terapi perilaku kognitif, terapi grup, terapi interpersonal, terapi keluarga, dan sebagainya."
                      "\n\nBila Anda atau orang terdekat memiliki keluhan yang mengarah kepada gangguan psikotik, sebaiknya segera lakukan konseling dengan psikolog atau psikiater pilihan melalui layanan Telekonsultasi."
                      "\n\nSelain memudahkan pasien untuk berkonsultasi dari rumah, layanan ini juga memungkinkan dokter untuk memberikan resep obat-obatan. Pasien juga bisa memperoleh obat tersebut tanpa perlu keluar rumah. Namun, terdapat beberapa jenis obat, seperti antipsikotik, obat penenang, dan antidepresan, yang harus diambil oleh pasien secara langsung (self pick up)."
                      "\n\nManfaatkan juga aplikasi MySiloam yang dapat memudahkan Anda untuk mencari informasi jadwal praktik hingga membuat appointment dengan psikolog atau psikiater Siloam Hospitals terdekat. Unduh aplikasinya sekarang dan nikmati kemudahan akses layanan kesehatan Anda #BersamaSiloam!",
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
