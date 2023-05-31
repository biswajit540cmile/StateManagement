import 'package:flutter/material.dart';

class ReduxScreen extends StatefulWidget {

  final String? title;
  const ReduxScreen({super.key, required this.title});

  @override
  State<ReduxScreen> createState() => _ReduxScreenState();
}

class _ReduxScreenState extends State<ReduxScreen> {


  @override
  Widget build(BuildContext context) {

    // var title;

    return Scaffold(
      appBar: AppBar(title:Text("${widget.title} Screen"),centerTitle: true,
      ),
    );
  }
}
