import 'package:flutter/material.dart';

//Model data
class ItemModel {
  final int id;
  final String name;
  final String description;

  ItemModel({required this.id, required this.name, required this.description});
}

//Widget Modular
class ItemCard extends StatelessWidget {
  final ItemModel item;

  const ItemCard({key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color cardColor = Colors.white;

    if (item.id % 2 ==0) {
      cardColor = Colors.blue[100]!;
    } else {
      cardColor = Colors.green[100]!;
    }

    return Card(
      color: cardColor,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          child: Text('${item.id}'),
        ),
        title: Text(item.name),
        subtitle: Text(item.description),
      ),
    );
  }
}

class ForLoop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout For Loop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutForLoop(),
    );
  }
}

class LayoutForLoop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ItemModel> items = [];

    for (int i = 1; i <= 30; i++) {
      String name = i % 2 == 0 ? 'Even Item $i' : 'Odd Item $i';
      String description = i % 2 == 0
          ? 'This is an even-numbered item.'
          : 'This is an odd-numbered item.';

      items.add(ItemModel(id: i, name: name, description: description));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Layout For Loop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemCard(item: items[index]);
          },
        ),
      ),
    );
  }
}
