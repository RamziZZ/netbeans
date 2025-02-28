import 'package:flutter/material.dart';

class WhileLoopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout While Loop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoopConditionalPracticum(),
    );
  }
}

class LoopConditionalPracticum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];
    int i = 1;

    while (i <= 20) {
      numbers.add(i);
      i++;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('While Loop & Conditional in Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            int number = numbers[index];
            Color backgroundColor = number % 2 == 0 ? Colors.blue.shade200 : Colors.green.shade200;

            return Card(
              color: backgroundColor,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('$number'),
                ),
                title: Text('Angka $number'),
                subtitle: Text(number % 2 == 0 ? 'Bilangan Genap' : 'Bilangan Ganjil'),
              ),
            );
          },
        ),
      ),
    );
  }
}
