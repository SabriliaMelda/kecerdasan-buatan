import 'package:flutter/material.dart';

class SesiCurhatPages extends StatefulWidget {
  @override
  _SesiCurhatPagesState createState() => _SesiCurhatPagesState();
}

class _SesiCurhatPagesState extends State<SesiCurhatPages> {
  List<Map<String, String>> _messages = [];
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Konfirmasi'),
            content: Text(
                'Apakah kamu sudah puas curhat dengan mimin Magic Shop? Semoga hari-harimu menyenangkan.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Ya'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('Belum'),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sesi Curhat',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 171, 169, 169),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/blue.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemCount: _messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            _messages[index]['isUser'] == 'true'
                                ? 'assets/images/van.jpg'
                                : 'assets/images/BTS.png',
                          ),
                        ),
                        title: Text(_messages[index]['message'] ?? ''),
                        subtitle: Text(_messages[index]['response'] ?? ''),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintText: 'Tulis sesuatu...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {
                        _sendMessage(_textController.text);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _sendMessage(String message) {
    setState(() {
      _messages.insert(0, {'message': message, 'isUser': 'true'});
      _getResponse(message);
      _textController.clear();
    });
  }

  void _getResponse(String message) {
    String response;
    if (message.toLowerCase().contains('capek')) {
      response =
          'Aku harap hari ini tidak terlalu berat bagimu. Mungkin kamu perlu istirahat sejenak, tarik napas dalam-dalam, dan coba lakukan sesuatu yang membuatmu rileks. Apa yang biasanya kamu lakukan untuk melepaskan penat?';
    } else if (message.toLowerCase().contains('hariku buruk')) {
      response =
          'Hari yang buruk tidak selalu berarti semuanya buruk. Mari kita fokus pada hal-hal positif dan percayalah bahwa besok akan lebih baik!';
    } else if (message.toLowerCase().contains('self harm')) {
      response =
          'Jika kamu merasa ingin melakukan self harm, bicaralah dengan seseorang yang dapat dipercaya. Kamu tidak sendiri dan ada banyak orang yang peduli padamu.';
    } else if (message.toLowerCase().contains('jahat')) {
      response =
          'Itu pasti terasa sangat menyakitkan. Tapi ingatlah bahwa tidak semua orang jahat, meskipun terkadang mungkin terasa begitu. Terkadang, orang bisa melakukan atau mengatakan sesuatu yang menyakitkan tanpa menyadari dampaknya. Cobalah untuk memahami bahwa setiap orang memiliki latar belakang dan pengalaman yang berbeda, yang mungkin memengaruhi cara mereka berinteraksi denganmu. \n\nTetaplah berpegang pada nilai-nilai dan prinsip yang penting bagimu. Carilah dukungan dari teman-teman atau keluarga yang peduli, dan jangan ragu untuk mencari bantuan profesional jika kamu merasa perlu. Yang terpenting, jangan biarkan perlakuan orang lain merusak harga dirimu. Kamu berharga dan layak mendapat penghormatan.';
    } else if (message.toLowerCase().contains('rebahan')) {
      response =
          'Rebahan memang bisa menjadi solusi yang tepat untuk melepaskan penat. Duduk santai di tempat yang nyaman, dengarkan musik yang menenangkan, baca buku, atau tonton film favoritmu. Kadang-kadang, menghabiskan waktu dengan hobi favorit juga bisa membuatmu merasa lebih baik. Semoga kamu mendapatkan istirahat yang cukup dan merasa lebih baik segera!';
    } else if (message.toLowerCase().contains('galau')) {
      response =
          'Aku mengerti, galau bisa membuatmu merasa terjebak dalam suasana yang sulit. Rasanya seperti ada beban emosional yang berat di pundakmu. Saat kamu merasa seperti ini, penting untuk tidak menyimpan perasaan tersebut sendiri. Cobalah untuk berbicara dengan seseorang yang bisa dipercaya, baik teman dekat, anggota keluarga, atau bahkan seorang profesional kesehatan mental. \n\nJika kamu ingin berbicara, aku di sini untuk mendengarkan. Ceritakanlah apa yang sedang membuatmu galau, mungkin dengan berbicara tentang hal tersebut bisa membantu meringankan beban yang kamu rasakan.';
    } else if (message.toLowerCase().contains('teman curhat')) {
      response =
          'Aku mengerti bahwa tidak memiliki teman untuk berbagi pikiran dan perasaan bisa membuatmu merasa kesepian. Namun, ingatlah bahwa kamu tidak sendirian. Ada banyak cara untuk mencari dukungan dan menciptakan hubungan baru. \n\nSalah satu cara adalah mencari komunitas atau kelompok dengan minat atau hobi yang sama denganmu. Bergabunglah dengan klub atau acara di komunitasmu yang menarik perhatianmu. Ini bisa menjadi kesempatan untuk bertemu dengan orang-orang baru dan membangun hubungan. \n\nSelain itu, dunia daring juga dapat menjadi tempat untuk berinteraksi dengan orang-orang dengan minat yang sama. Ada banyak forum, grup media sosial, dan platform lainnya di mana kamu dapat berkomunikasi dan berbagi pengalaman dengan orang-orang yang memiliki minat yang sama denganmu. \n\nJika kamu merasa kesepian atau membutuhkan dukungan lebih lanjut, ada juga organisasi atau profesional kesehatan mental yang siap membantu. Mereka dapat memberikan saran dan dukungan yang diperlukan untuk mengatasi perasaan kesepian dan galau yang kamu rasakan. Jangan ragu untuk mencari bantuan jika kamu merasa membutuhkannya.';
    } else {
      response = '';
    }
    _messages.insert(0, {'response': response, 'isUser': 'false'});
  }
}
