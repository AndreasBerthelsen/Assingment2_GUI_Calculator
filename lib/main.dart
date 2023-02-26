import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 50,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                      child: Text(
                        "Plus",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 50,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                      child: Text(
                        "Enter",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 50,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                      child: Text(
                        "Minus",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 50,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                      child: Text(
                        "7",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 50,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                      child: Text(
                        "8",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 50,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                      child: Text(
                        "9",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(child: Container(
                  padding: EdgeInsets.only(left:15), child: SizedBox(
                  width: 50,
                  height: 60, child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                  child: Text("4", style: TextStyle(fontSize: 18, color: Colors.black),),
                ),
                ),
                )),
                Expanded(child: Container(
                  padding: EdgeInsets.only(left:15), child: SizedBox(
                  width: 50,
                  height: 60, child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                  child: Text("5", style: TextStyle(fontSize: 18, color: Colors.black),),
                ),
                ),
                )),
                Expanded(child: Container(
                  padding: EdgeInsets.only(left:15), child: SizedBox(
                  width: 50,
                  height: 60, child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                  child: Text("6", style: TextStyle(fontSize: 18, color: Colors.black),),
                ),
                ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

