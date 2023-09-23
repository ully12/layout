import 'package:flutter/material.dart';
import 'package:layout/account.dart';
import 'package:layout/info.dart';
import 'package:layout/less.dart';
import 'package:layout/setting.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RPL'),
        backgroundColor: Colors.purple,
        leading: Icon(Icons.view_headline),
        actions: <Widget>[
          InkWell(
            onTap: () {
              setState(() {});
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Info())
              );
            },
            child: Icon(
              Icons.info,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {});
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => account())
              );
            },
            child: Icon(
              Icons.person,
            ),
          ), SizedBox(width: 15)
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/rpl.png', width: 150, height: 200,
            ),
            Text(
              'Rekayasa Perangkat Lunak',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), SizedBox(height: 5),
            Text('SMK Negeri 1 Slawi', style: TextStyle(fontSize: 19, fontWeight: FontWeight.normal)),
            Text('Siti Ully Hidayah', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu())
                    );
                  },
                  child: Icon(
                    Icons.home,
                    size: 60,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Less())
                    );
                  },
                  child: Icon(
                    Icons.menu_book,
                    size: 60,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Setting())
                    );
                  },
                  child: Icon(
                    Icons.settings,
                    size: 60,
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}