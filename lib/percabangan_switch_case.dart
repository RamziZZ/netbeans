import 'package:flutter/material.dart';

class PercabanganSwitchCase extends StatelessWidget{ 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Percabangan Switch Case',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutSwitchCase(),
    );
  }
}

class LayoutSwitchCase extends StatefulWidget {
  @override
  _LayoutSwitchCase createState() => _LayoutSwitchCase();
}

class _LayoutSwitchCase extends State<LayoutSwitchCase> {
  int selectedIndex =1;

  String getMessage(int index) {
    switch (index) {
      case 1:
      return "Ini adalah pesan Pertama";
      case 2:
      return "Ini adalah pesan Kedua";
      case 3:
      return "Ini adalah pesan Ketiga";
      default:
      return "Pilihan tidak Valid";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Percabangan Switch Case'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getMessage(selectedIndex),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            DropdownButton<int>(
              value: selectedIndex,
              items: [
                DropdownMenuItem(value:1, child: Text("Pilihan 1")),
                DropdownMenuItem(value:2, child: Text("Pilihan 2")),
                DropdownMenuItem(value:3, child: Text("Pilihan 3")),
                DropdownMenuItem(value:4, child: Text("default")),
              ], 
              onChanged: (value) {
                setState(() {
                  selectedIndex = value ?? 1;
                });
              },
            ),
          ],
        ),
      )
    );
  }
}