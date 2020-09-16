import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{

  Icon fieldIcon;
  String hintText;

  CustomInputField(this.fieldIcon,this.hintText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      child: Material(
          elevation: 10.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: fieldIcon,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),bottomRight: Radius.circular(10.0)),
                ),
                width: 220,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText,
                        fillColor: Colors.white10,
                        filled: true
                    ),
                    style: TextStyle(
                        fontSize: 13.5,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }

}