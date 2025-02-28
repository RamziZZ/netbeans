import 'package:flutter/material.dart';

class PercabanganIfElse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Percabangan If Else',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutIfElse(),
    );
  }
}

class LayoutIfElse extends StatefulWidget {
  @override
  _LayoutPracticumState createState() => _LayoutPracticumState();
}

class _LayoutPracticumState extends State<LayoutIfElse> {
  int score = 0;

  String getScoreCategory() {
    if (score >= 90) {
      return 'A';
    } else if (score >= 75) {
      return 'B';
    } else if (score >= 60) {
      return 'C';
    } else {
      return 'D';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Percabangan If Else'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Masukkan Nilai:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Slider(
              value: score.toDouble(),
              min: 0,
              max: 100,
              divisions: 10,
              label: score.toString(),
              onChanged: (double value) {
                setState(() {
                  score = value.toInt();
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Kategori Nilai: ${getScoreCategory()}',
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
