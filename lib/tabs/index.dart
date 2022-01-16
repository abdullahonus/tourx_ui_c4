import 'package:flutter/material.dart';

class IndexOne extends StatefulWidget {
  const IndexOne({Key? key}) : super(key: key);

  @override
  _IndexOneState createState() => _IndexOneState();
}

class _IndexOneState extends State<IndexOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Index1")),
    ));
  }
}
