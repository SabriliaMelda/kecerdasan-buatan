import 'package:flutter/material.dart';

class Gejala {
  final String id;
  final String deskripsi;

  Gejala(this.id, this.deskripsi);
}

class DiagnosaPages extends StatefulWidget {
  @override
  _DiagnosaPagesState createState() => _DiagnosaPagesState();
}

class _DiagnosaPagesState extends State<DiagnosaPages> {
  List<Gejala> anxietySymptoms = [
    Gejala('A1', 'Ketakutan yang berlebihan'),
    Gejala('A2', 'Rasa gelisah yang terus-menerus'),
    Gejala('A3', 'Mudah lelah'),
    Gejala('A4', 'Gangguan tidur'),
    Gejala('A5', 'Kesulitan berkonsentrasi'),
    Gejala('A6', 'Detak jantung cepat'),
    Gejala('A7', 'Pernapasan dangkal'),
    Gejala('A8', 'Keringat dingin'),
    Gejala('A9', 'Pusing atau pingsan'),
    Gejala('A10', 'Rasa tidak nyaman pada perut'),
    Gejala('A11', 'Mengalami gemetar'),
    Gejala('A12', 'Merasa tegang atau gelisah'),
  ];

  List<Gejala> selfHarmSymptoms = [
    Gejala('S1', 'Melukai diri sendiri secara sengaja'),
    Gejala('S2', 'Perasaan putus asa yang mendalam'),
    Gejala('S3', 'Menghindari perhatian terhadap diri sendiri'),
    Gejala('S4', 'Menyembunyikan luka-luka'),
    Gejala('S5', 'Merasa terisolasi'),
    Gejala('S6', 'Menghindari berinteraksi dengan orang lain'),
    Gejala('S7', 'Merasa tidak berharga atau tidak pantas'),
    Gejala('S8', 'Peningkatan agresivitas atau kemarahan'),
    Gejala('S9', 'Pola makan yang tidak sehat atau gangguan makan'),
    Gejala('S10', 'Konsumsi alkohol atau obat-obatan'),
    Gejala('S11', 'Menarik diri dari aktivitas yang pernah dinikmati'),
    Gejala('S12', 'Merasa tidak memiliki harapan untuk masa depan'),
  ];

  List<Gejala> psychoticDisorderSymptoms = [
    Gejala('P1',
        'Halusinasi (mendengar, melihat, atau merasa sesuatu yang tidak nyata)'),
    Gejala('P2', 'Delusi (keyakinan yang tidak benar atau tidak rasional)'),
    Gejala('P3', 'Gangguan pikiran (pola pikir yang terganggu)'),
    Gejala('P4', 'Perilaku yang tidak teratur atau aneh'),
    Gejala('P5',
        'Gejala negatif (kurangnya kemampuan untuk merasa kesenangan, kurangnya motivasi, atau kurangnya emosi)'),
    Gejala('P6', 'Peningkatan agresivitas atau kemarahan'),
    Gejala('P7', 'Pola makan yang tidak sehat atau gangguan makan'),
    Gejala('P8', 'Pengabaian kebersihan pribadi'),
  ];

  List<bool> anxietyChecklist = List.filled(12, false);
  List<bool> selfHarmChecklist = List.filled(12, false);
  List<bool> psychoticDisorderChecklist = List.filled(8, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diagnosa Magic Shop',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 181, 206, 241),
      ),
      body: Stack(
        children: [
          // Gambar Latar Belakang
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/d2.jpg'), // Ganti dengan path gambar latar belakang Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Konten Depan
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildChecklist(anxietySymptoms, anxietyChecklist),
                _buildChecklist(selfHarmSymptoms, selfHarmChecklist),
                _buildChecklist(
                    psychoticDisorderSymptoms, psychoticDisorderChecklist),
                SizedBox(height: 20.0),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          spreadRadius: 1.0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: _evaluateDiagnosis,
                      style: ElevatedButton.styleFrom(
                        elevation:
                            0, // Set elevation to 0 to remove default shadow
                      ),
                      child: Text(
                        'Evaluasi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 11, 72),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChecklist(List<Gejala> symptoms, List<bool> checklist) {
    return Column(
      children: List.generate(
        symptoms.length,
        (index) => Container(
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: CheckboxListTile(
            title: Text(symptoms[index].deskripsi),
            value: checklist[index],
            onChanged: (value) {
              setState(() {
                checklist[index] = value!;
              });
            },
          ),
        ),
      ),
    );
  }

  void _evaluateDiagnosis() {
    // Evaluasi ciri-ciri kecemasan
    int anxietyCount = anxietyChecklist.where((element) => element).length;

    // Evaluasi ciri-ciri self harm
    int selfHarmCount = selfHarmChecklist.where((element) => element).length;

    // Evaluasi ciri-ciri psychotic disorder
    int psychoticDisorderCount =
        psychoticDisorderChecklist.where((element) => element).length;

    if (anxietyCount > 0 && selfHarmCount == 0 && psychoticDisorderCount == 0) {
      _showDiagnosaDialog(
          'Anda mungkin menderita kecemasan. \n\nSegera konsultasikan ke dokter atau psikiater.');
    } else if (selfHarmCount > 0 &&
        anxietyCount == 0 &&
        psychoticDisorderCount == 0) {
      _showDiagnosaDialog(
          'Anda mungkin menderita self-harm. \n\nSegera konsultasikan ke dokter atau psikiater.');
    } else if (psychoticDisorderCount > 0 &&
        anxietyCount == 0 &&
        selfHarmCount == 0) {
      _showDiagnosaDialog(
          'Anda mungkin menderita gangguan psikotik. \n\nSegera konsultasikan ke dokter atau psikiater.');
    } else if (anxietyCount > 0 &&
        selfHarmCount > 0 &&
        psychoticDisorderCount == 0) {
      _showDiagnosaDialog(
          'Anda mungkin menderita kecemasan dan memiliki potensi self-harm. \n\nSegera konsultasikan ke dokter atau psikiater.');
    } else if (anxietyCount > 0 &&
        selfHarmCount == 0 &&
        psychoticDisorderCount > 0) {
      _showDiagnosaDialog(
          'Anda mungkin menderita kecemasan dan memiliki potensi gangguan psikotik. \n\nSegera konsultasikan ke dokter atau psikiater.');
    } else if (anxietyCount == 0 &&
        selfHarmCount > 0 &&
        psychoticDisorderCount > 0) {
      _showDiagnosaDialog(
          'Anda mungkin menderita self-harm dan memiliki potensi gangguan psikotik.\n\nSegera konsultasikan ke dokter atau psikiater.');
    } else if (anxietyCount > 0 &&
        selfHarmCount > 0 &&
        psychoticDisorderCount > 0) {
      _showDiagnosaDialog(
          'Anda mungkin menderita kecemasan dan memiliki potensi self-harm dan juga memiliki potensi gangguan psikotik. \n\nJika gejala terus berlanjut, segera konsultasikan ke dokter atau spesialis.');
    } else {
      _showDiagnosaDialog('Tidak ada diagnosa yang ditemukan.');
    }
  }

  Future<void> _showDiagnosaDialog(String message) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Diagnosa'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    ).then((value) {
      _showSuccessMessage();
    });
  }

  void _showSuccessMessage() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pesan Penyemangat!!'),
          content:
              Text('Hi.. \nKamu bertahan sampai hari ini pun itu sudah hebat.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }
}
