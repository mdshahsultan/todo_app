import 'dart:isolate';

import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(lable){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    labelText: lable,
    // Label color (normal)
      labelStyle: const TextStyle(
        color: Colors.black,
      ),
    // Label color (when focused)
    floatingLabelStyle: const TextStyle(
      color: Colors.green,
      //fontWeight: FontWeight.bold,
    ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(22),
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
    )
  );
}

SizedBox SizeBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}