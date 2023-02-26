import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      padding: EdgeInsets.only(left:15), child: SizedBox(
      width: 50,
      height: 60, child: ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent),
      child: Text("Enter", style: TextStyle(fontSize: 18, color: Colors.black),),
    ),
    ),
    ));
  }
}
