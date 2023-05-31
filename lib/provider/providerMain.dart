import 'package:flutter/material.dart';

class ProviderScreen extends StatefulWidget {

  final String? title;
  const ProviderScreen({super.key, required this.title});

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {


  @override
  Widget build(BuildContext context) {

    // var title;

    return Scaffold(
      appBar: AppBar(title:Text("${widget.title} Screen"),centerTitle: true,
      ),
    );
  }
}
