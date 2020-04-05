import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parte/pages/hora.dart';
import 'package:parte/pages/selecciona_jugadores.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  //final String appTitle = 'COMENZAR PARTIDO';
  @override
  Widget build(BuildContext context) => MaterialApp(
    //title: (),
    theme: ThemeData(primarySwatch: Colors.red),
    home: MainPage(appTitle: 'hbk'),
  );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
    /*appBar: AppBar(
      title: Text(appTitle),
    ),*/
    body: Center(
      child: hora(),
    ),
  );
}
