import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: const Text('Rekayasa Perangkat Lunak',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18
                  )),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text('Siti Ully Hidayah',
                  style: TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey
                  ),
                  ),
                )
              ],
            ) 
          ),
          Icon(Icons.star,
          color: Colors.orange.shade800),
          const Text('43',
          style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 13
          ),
          )
        ],
      ),
    );
    Column buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label, style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: color
              ),
            ),
          )
        ],
      );
    }
    Color color = Colors.purple;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.call, 'CALL'),
        buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        buildButtonColumn(color, Icons.share, 'SHARE')
      ],
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'RPL (Rekayasa Perangkat Lunak) merupakan salah satu jurusan yang ada di Sekolah Menengah Kejuruan(SMK). Seperti di SMK Negeri 1 Slawi, jurusan RPL (Rekayasa Perangkat Lunak) ini sudah ada sejak tahun 2018.'
        ' RPL mempelajari dan mendalami semua cara-cara pengembangan perangkat lunak termasuk pembuatan, pemeliharaan, manajemen organisasi pengembangan perangkat lunak, dan manajemen kualitas.'
        ' Bukan hanya itu, RPL juga berkaitan dengan software komputer mulai dari pembuatan website, aplikasi, game, dan semua yang berkaitan dengan pemrograman dengan menguasai bahasa pemrograman tertentu.'
        ' Intinya RPL tidak jauh-jauh dari tiga hal yaitu Coding, Desain, dan Algoritma yang akan menjadi kunci keberhasilan rekayasa perangkat lunak tersebut.'
        ' Untuk meningkatkan kompetensi siswa, tentunya harus di dukung dengan mata pelajaran yang sesuai dengan jurusan yang di ambil.'
        ' Berikut beberapa mata pelajaran pada jurusan RPL di SMK Negeri 1 Slawi, yaitu Pemrograman Berorientasi Objek, Pemodelan Perangkat Lunak, Pemrograman Web dan Perangkat Bergerak, Basis Data, dan Produk Kreatif dan Kewirausahaan, serta pelajaran umum lainnya.',
      textAlign: TextAlign.justify,
      ),
    );
    return MaterialApp(
      title: 'RPL',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('About'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView(
          children: [
            Image.asset('assets/pict.png',
            fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}