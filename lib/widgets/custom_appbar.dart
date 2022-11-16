
import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({Key? key,required String title}) : super(key: key,
    preferredSize: const Size.fromHeight(60.0),
    child: AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.lightBlue,
      title: Text(title , style: const TextStyle(
        color: Colors.white,
      ),),
    ),
  );


}
