import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';


class NavAddCoustomer extends StatefulWidget {
  @override

  _TextFieldscreenState createState() => _TextFieldscreenState();
}

class _TextFieldscreenState extends State<NavAddCoustomer> {
  @override


  File _image;

  Future getImage(ImgSource source) async {
    var image = await ImagePickerGC.pickImage(
      context: context,
      source: source,
      cameraIcon: Icon(
        Icons.add,
        color: Colors.red,
      ),//cameraIcon and galleryIcon can change. If no icon provided default icon will be present
    );
    setState(() {
      _image = image;
    });
  }

  String _person_name,_firm_name,_address1,_address2,_ctydropdown,_email;

  String dropdownValue = 'City';



  List <String> spinnerItems = [
    'City',
    'Morbi'
  ] ;

  Widget _buildPersonNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Person Name"),
      validator: (String value){
        if(value.isEmpty){
          return 'Person Name is Required';
        }
      },
      onSaved: (String value){
        _person_name = value;
      },
    );
  }
  Widget _buildFirmNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Firm Name"),
      validator: (String value){
        if(value.isEmpty){
          return 'FirmName is Required';
        }
      },
      onSaved: (String value){
        _firm_name = value;
      },
    );
  }
  Widget _buildAddress1Field(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Address Line 1"),
      validator: (String value){
        if(value.isEmpty){
          return 'Address is Required';
        }
      },
      onSaved: (String value){
        _address1 = value;
      },
    );
  }
  Widget _buildAddress2Field(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Address Line 2"),

      onSaved: (String value){
        _address2 = value;
      },
    );
  }
  Widget _citydropdown(){
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      style: TextStyle(color: Colors.black, fontSize: 18),
      underline: Container(
        height: 1,
        color: Colors.black,
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
    );

  }
  Widget _buildEmailField(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Email"),

      onSaved: (String value){
        _email = value;
      },
    );
  }
  Widget _buildWebsiteField(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Web url"),

      onSaved: (String value){
        _email = value;
      },
    );
  }
  Widget _buildMobileField(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Mobile No"),

      onSaved: (String value){
        _email = value;
      },
    );
  }
  Widget _buildWhatsappNumberField(){
    return TextFormField(
      decoration: InputDecoration(labelText: "Whats app No"),

      onSaved: (String value){
        _email = value;
      },
    );
  }







  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Form(child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(24),
                child: Form(child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildFirmNameField(),
                    _buildPersonNameField(),
                    _buildAddress1Field(),
                    _buildAddress2Field(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: _citydropdown(),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: _citydropdown(),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: _citydropdown(),
                            ),
                          )
                        ]
                    ),
                    _buildEmailField(),
                    _buildWebsiteField(),
                    _buildMobileField(),
                    _buildWhatsappNumberField(),
                    SizedBox(height: 100),
                    RaisedButton(
                      child: Text('submit',style: TextStyle(color: Colors.blue,fontSize: 20),
                      ),
                      onPressed: () => {},
                    ),
                    RaisedButton(

                      onPressed: () => getImage(ImgSource.Both),

                      color: Colors.red,

                      child: Text(

                        "Both".toUpperCase(),

                        style: TextStyle(color: Colors.white),

                      ),

                    )

                  ],
                ),
                ),
              ),
              _image != null ? Image.file(_image) : Container(),


            ]

        )),

      ),
    );
  }
}