import 'package:flutter/material.dart';

class MobXScreen extends StatefulWidget {

  final String? title;
  const MobXScreen({super.key, required this.title});

  @override
  State<MobXScreen> createState() => _MobXScreenState();
}

class _MobXScreenState extends State<MobXScreen> {


  @override
  Widget build(BuildContext context) {

   // var title;

    return Scaffold(
      appBar: AppBar(title:Text("${widget.title} Screen"),centerTitle: true,
      ),
    );
  }
}
