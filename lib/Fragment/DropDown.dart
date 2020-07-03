import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  DropDownWidget createState() => DropDownWidget();
}

class DropDownWidget extends State {

  String dropdownValue = 'One';

  List <String> spinnerItems = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five'
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child :
        Column(children: <Widget>[

          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.red, fontSize: 18),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String data) {
              setState(() {
                dropdownValue = data;
              });
            },
            items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),

          Text('Selected Item = ' + '$dropdownValue',
              style: TextStyle
                (fontSize: 22,
                  color: Colors.black)),
        ]),
      ),
    );
  }
}