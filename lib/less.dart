import 'package:flutter/material.dart';

class Less extends StatefulWidget {
  const Less({Key? key}) : super(key: key);

  @override
  State<Less> createState() => _LessState();
}

class _LessState extends State<Less> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPL',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Lesson'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lesson'
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}