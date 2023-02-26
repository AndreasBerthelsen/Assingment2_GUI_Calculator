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

  final double btnPadding = 10.0;
  final double numPadding = 20.0;
  final Color backgroundColor = Colors.black;
  final Color textColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RPN Calculator"),actions: [
        IconButton(
            onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('How to use the RPN Calculator?'),
                    content: const Text(
                        'To use the calculator, first enter a number, then press "Enter".             Then a second number, "Enter" again.       And last the number operator you would like to use'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
            icon: Icon(Icons.info)),
      ]),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Last number:",
              style: TextStyle(fontSize: 20),
            ),
            stackDisplay(),
            Text(
              "Entered number:",
              style: TextStyle(fontSize: 20),
            ),
            numberDisplay(),
            clearBtn(),
            buildRow1(),
            buildRow2(),
            buildRow3(),
            buildRow4()
          ],
        ),
      ),
    );
  }

  Container numberDisplay() {
    return Container(
        padding: EdgeInsets.only(bottom: numPadding, top: numPadding),
        decoration: BoxDecoration(
            color: backgroundColor, border: Border.all(color: Colors.black)),
        child: Center(
          child: Text(
            "test2",
            style: TextStyle(fontSize: 75, color: textColor),
          ),
        ));
  }

  Container stackDisplay() {
    return Container(
        padding: EdgeInsets.only(bottom: numPadding, top: numPadding),
        decoration: BoxDecoration(
            color: backgroundColor, border: Border.all(color: Colors.black)),
        child: Center(
          child: Text(
            "test1",
            style: TextStyle(fontSize: 75, color: textColor),
          ),
        ));
  }

  Row clearBtn() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
              width: 50,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: Text(
                  "Clear",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )),
        ))
      ],
    );
  }

  Row buildRow4() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
              width: 50,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: Text(
                  "Enter",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
              width: 50,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
              width: 50,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: Text(
                  ",",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "+",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
      ],
    );
  }

  Row buildRow3() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "1",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "2",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "3",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "-",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
      ],
    );
  }

  Row buildRow2() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "4",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "5",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "6",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "/",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
      ],
    );
  }

  Row buildRow1() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "7",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "8",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "9",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
              left: btnPadding,
              right: btnPadding,
              bottom: btnPadding,
              top: btnPadding),
          child: SizedBox(
            width: 50,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                "*",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        )),
      ],
    );
  }
}
