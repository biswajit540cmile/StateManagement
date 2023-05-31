import 'package:flutter/material.dart';

class BlocScreen extends StatefulWidget {

  final String? title;
  const BlocScreen({super.key, required this.title});

  @override
  State<BlocScreen> createState() => _BlocScreenState();
}

class _BlocScreenState extends State<BlocScreen> {
  @override
  Widget build(BuildContext context) {

    // var title;

    return Scaffold(
      appBar: AppBar(title:Text("${widget.title} Screen"),centerTitle: true,
      ),
    );
  }
}
