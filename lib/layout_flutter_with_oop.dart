import 'package:flutter/material.dart';

//MOdel Data 
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
     return Card(
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

class LayoutFlutterWithOop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Practicum Oop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: layoutOop(),
    );
  }
}

class layoutOop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ItemModel> items = List.generate(
      20,
      (index) => ItemModel(
        id: index + 1, 
        name: 'Item ${index + 1}', 
        description: 'This is item number ${index + 1}',
        ),
      );

      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout with OOP'),
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