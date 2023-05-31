import 'package:flutter/material.dart';

class BinderScreen extends StatefulWidget {

  final String? title;
  const BinderScreen({super.key, required this.title});

  @override
  State<BinderScreen> createState() => _BinderScreenState();
}

class _BinderScreenState extends State<BinderScreen> {
  @override
  Widget build(BuildContext context) {

    // var title;

    return Scaffold(
      appBar: AppBar(title:Text("${widget.title} Screen"),centerTitle: true,
      ),
    );
  }
}
