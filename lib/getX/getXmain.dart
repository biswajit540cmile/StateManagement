import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GetXScreen extends StatefulWidget {

  final String? title;
  const GetXScreen({super.key, required this.title});

  @override
  State<GetXScreen> createState() => _GetXScreenState();
}

class _GetXScreenState extends State<GetXScreen> {
  @override
  Widget build(BuildContext context) {

    // var title;

    return GetMaterialApp(
      home: Scaffold(appBar: AppBar(title:Text("${widget.title} Screen"),centerTitle: true,),
      ) );

  }
}

