import 'package:flutter/material.dart';

class ScreenBase extends StatelessWidget {
  final String title;
  final Widget child;
  const ScreenBase({required this.title, required this.child,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          SizedBox(height: MediaQuery.of(context).padding.top,),

          Container(
            color: Colors.grey.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  alignment: Alignment.center,
                  width: 180.0,
                  margin: const EdgeInsets.only(top: 4.0),
                  decoration: const BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  child: Row(

                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back, color: Colors.white,),
                      ),

                      const SizedBox(width: 8.0,),

                      Text(title, style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                        textAlign: TextAlign.center,
                      ),


                    ],
                  ),
                ),


              ],
            ),
          ),

          Expanded(
            child: Container(
              decoration:  const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                ),
              ),
              child: child,
            ),
          ),




        ],
      ),
    );
  }
}
