import 'package:flutter/material.dart';

class DoWhileLoop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Do While Loop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutPracticum(),
    );
  }
}

class LayoutPracticum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> numbers = [];
    int i = 1;

    do {
      numbers.add({
        'number': i,
        'type': (i % 2 == 0) ? 'Genap' : 'Ganjil'
      });
      i++;
    } while (i <= 10);

    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Do While Loop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('${numbers[index]['number']}'),
                ),
                title: Text('Angka ${numbers[index]['number']}'),
                subtitle: Text('Bilangan ${numbers[index]['type']}'),
              ),
            );
          },
        ),
      ),
    );
  }
}