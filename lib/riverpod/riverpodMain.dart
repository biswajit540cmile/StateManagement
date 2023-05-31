import 'package:flutter/material.dart';

class RiverpodScreen extends StatefulWidget {

  final String? title;
  const RiverpodScreen({super.key, required this.title});

  @override
  State<RiverpodScreen> createState() => _RiverpodScreenState();
}

class _RiverpodScreenState extends State<RiverpodScreen> {
  @override
  Widget build(BuildContext context) {

    // var title;

    return Scaffold(
      appBar: AppBar(title:Text("${widget.title} Screen"),centerTitle: true,
      ),
    );
  }
}
