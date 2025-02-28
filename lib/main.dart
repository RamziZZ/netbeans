import 'package:flutter/material.dart';
import 'package:tugas_oop_flutter1/belajar_animation.dart';
import 'do_while_loop.dart';
import 'for_loop.dart';
import 'layout_flutter_with_oop.dart';
import 'percabangan_if_else.dart';
import 'percabangan_switch_case.dart';
import 'while_loop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas BKPM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const ButtonList(),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Warna tombol
        foregroundColor: textColor, // Warna teks
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(fontSize: 16)),
    );
  }
}

class ButtonList extends StatelessWidget {
  const ButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tugas BKPM"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              text: 'Layout flutter with oop',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutFlutterWithOop()),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Percabangan if else',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PercabanganIfElse()),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Percabangan switch case',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PercabanganSwitchCase()),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'for Loop',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForLoop()),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'while Loop',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WhileLoopApp()),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'do while Loop',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoWhileLoop()),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Belajar Animations',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BelajarAnimation()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
