
import 'package:flutter/material.dart';

class Constants {

  static void navigateTo(BuildContext context, Widget page){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

}