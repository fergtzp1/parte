import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class hora extends StatefulWidget {
  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<hora> {
  DateTime selectedDate = DateTime.now();

  final DateFormat dateFormat = DateFormat('dd-MM-yyyy ');
  final DateFormat dateFormat1 = DateFormat('hh:mm-a');

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        bottom: AppBar(
          actions: <Widget>[
            IconButton(onPressed:(){
            }
                ,icon:Icon(Icons.menu))
          ],
          title: Text('COMENZAR PARTIDO', style: TextStyle(color: Colors.white, fontSize: 25.0), ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(dateFormat.format(selectedDate)),
            Text(dateFormat1.format(selectedDate)),
            RaisedButton(
                child: Container(
                  padding: EdgeInsets.symmetric( horizontal: 80.0, vertical: 30.0),
                  child: Text('COMENZAR PARTIDO'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                ),
                elevation: 0.0,
                color: Colors.red,
                textColor: Colors.white,
                onPressed: alert
            ),
          ],
        ),
      ),

    );
  }

  Future<TimeOfDay> _selectTime(BuildContext context) {
    final now = DateTime.now();

    return showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
    );
  }

  Future<DateTime> _selectDateTime(BuildContext context) => showDatePicker(
    context: context,
    initialDate: DateTime.now().add(Duration(seconds: 1)),
    firstDate: DateTime.now(),
    lastDate: DateTime(2100),
  );

  void alert() async {
    CupertinoAlertDialog(
      content: Text("Una ves que de acceptar, no podrá editar la información anterior."),
      actions: <Widget>[
        CupertinoDialogAction(child: Text('Cancelar'),),
        CupertinoDialogAction(child: Text('Aceptar'),),
      ],

    );
  }
}