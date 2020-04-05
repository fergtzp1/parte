import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(TabsApp());

class TabsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabs App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  List<Widget> containers = [
    Container(
        child: DataTable(
            columns: [
              DataColumn(label: Text('Núm.')),
              DataColumn(label: Text('Nom.')),
              DataColumn(label: Text('Foto.')),
              DataColumn(label: Text('Accion.')),


            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1', textAlign:TextAlign.center ,)),
                DataCell(Text('Stepdom Lemon')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Aaron Harper')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Aarón Pérez')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('6')),
                DataCell(Text('Germain Jordan')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('7')),
                DataCell(Text('Maximiliano Ramírez')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('10')),
                DataCell(Text('Pedro Herrera')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('13')),
                DataCell(Text('Kyle Lamonte')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('14')),
                DataCell(Text('Hugo Carrillo')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Dominic Woodson')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              /*DataRow(cells: [
                DataCell(Text('19')),
                DataCell(Text('Juan Bladenbro')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('20')),
                DataCell(Text('Luis Quintero')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('23')),
                DataCell(Text('Gabriel Vázquez')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('50')),
                DataCell(Text('Miguel Sosa')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('23')),
                DataCell(Text('Gabriel Vázquez')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),*/
            ])
    ),
    Container(
        child: DataTable(
            columns: [
              DataColumn(label: Text('Núm.')),
              DataColumn(label: Text('Nom.')),
              DataColumn(label: Text('Foto.')),
              DataColumn(label: Text('Accion.')),


            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Manuel Paz y Puente')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('6')),
                DataCell(Text('Armando Fernández')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('7')),
                DataCell(Text('Diego Herrera')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('13')),
                DataCell(Text('Trenton Steen')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('17')),
                DataCell(Text('Mauricio Cheda')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('20')),
                DataCell(Text('José Morón')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('17')),
                DataCell(Text('Mauricio Cheda')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('24')),
                DataCell(Text('John Taylor')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('27')),
                DataCell(Text('Chase Salazar')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              /* DataRow(cells: [
                DataCell(Text('35')),
                DataCell(Text('Ángel Matías')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),
              DataRow(cells: [
                DataCell(Text('47')),
                DataCell(Text('Raven Lee Jr.')),
                DataCell(Icon(Icons.person)),
                DataCell(Icon(Icons.check_box_outline_blank)),
              ]),*/
            ])
    ),



  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(onPressed:(){
            }
                ,icon:Icon(Icons.menu))
          ],
          title: Text('EQUIPOS', style: TextStyle(color: Colors.white, fontSize: 25.0), ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text:'Huracanes de Tampico',
              ),
              Tab(
                text: 'Laguneros',
              ),

            ],
          ),
        ),
        body: Container(
          child: new TabBarView(
            children: containers,

          ),
        ),
      ),
    );
  }
}