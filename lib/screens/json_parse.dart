import 'package:flutter/material.dart';

class JsonParse extends StatefulWidget {
  JsonParse({Key? key}) : super(key: key);

  @override
  State<JsonParse> createState() => _JsonParseState();
}

class _JsonParseState extends State<JsonParse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Parse'),
      ),
    );
  }
}
