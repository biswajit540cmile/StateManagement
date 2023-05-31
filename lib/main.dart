import 'package:flutter/material.dart';
import 'package:statemanagement/blOc/blocMain.dart';
import 'package:statemanagement/getX/getXmain.dart';
import 'package:statemanagement/provider/providerMain.dart';
import 'package:statemanagement/redux/reduxMain.dart';
import 'package:statemanagement/riverpod/riverpodMain.dart';
import 'binder/binderMain.dart';
import 'mobX/mobXmain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StateManagement',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<ElevatedBtnList> elevatedBtnList = [];
  @override
  void initState() {
    elevatedBtnList = [
      ElevatedBtnList("Provider", Colors.greenAccent, const ProviderScreen(title: "Provider")),
      ElevatedBtnList("Redux", Colors.greenAccent, const ReduxScreen(title: "Redux")),
      ElevatedBtnList("Binder", Colors.greenAccent, const BinderScreen(title: "Binder")),
      ElevatedBtnList("Bloc", Colors.greenAccent, const BlocScreen(title: 'Bloc')),
      ElevatedBtnList("GetX", Colors.greenAccent, const GetXScreen(title:"GetX")),
      ElevatedBtnList("MobX", Colors.greenAccent,  const MobXScreen(title:"MobX")),
      ElevatedBtnList("Riverpod", Colors.greenAccent,  const RiverpodScreen(title: "Riverpod")),

    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: elevatedBtnList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: elevatedBtnList[index].color,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => elevatedBtnList[index].onPressed),
                  );
                },
                child: Text(
                  elevatedBtnList[index].btnTitle,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            );
          }),
    );
  }
}

class ElevatedBtnList {
  String btnTitle = "";
  Color color;
  Widget onPressed;
  ElevatedBtnList(this.btnTitle, this.color, this.onPressed);
}
