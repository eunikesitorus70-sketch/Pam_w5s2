import 'package:flutter/material.dart';

class NameTextField extends StatefulWidget {
  const NameTextField({super.key});

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
  _controller.dispose(); //TODO jelaskan
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('TextField')),
      body:Padding(
        padding: EdgeInsetsGeometry.all(16.0),
        child: TextField(
          controller:_controller,
          maxLength: 20, //batas maksimal karakter input
          decoration: const InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey, //Warna underline blueGrey
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey, //TODO jelaskan
              ),
            ),
          ),
          onChanged: (text) {
            debugPrint('Text changed: $text'); //TODO jelaskan
          }
        ),
      ),
    );
  }
}
