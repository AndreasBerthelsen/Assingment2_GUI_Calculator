import 'package:flutter/material.dart';
import 'command.dart';

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

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final double btnPadding = 10.0;
  final double numPadding = 20.0;
  final Color backgroundColor = Colors.black;
  final Color textColor = Colors.red;
  String enteredNumber = '';
  List<String> stackedNumbers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RPN Calculator"), actions: [
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
              "Last numbers:",
              style: TextStyle(fontSize: 20),
            ),
            stackDisplay(),
            Text(
              "Entered value:",
              style: TextStyle(fontSize: 20),
            ),
            numberDisplay(),
            clearBtns(),
            buildRow1(),
            buildRow2(),
            buildRow3(),
            buildRow4()
          ],
        ),
      ),
    );
  }

  ClearNumber() {
    setState(() {
      enteredNumber = '';
    });
  }

  ClearAll() {
    setState(() {
      enteredNumber = '';
      stackedNumbers.clear();
    });
  }

  EnterNumber(String value) {
    setState(() {
      enteredNumber = enteredNumber + value;
    });
  }

  CheckInput(){
    if(enteredNumber=='+'){
    Addition().execute(stackedNumbers);
    }else if(enteredNumber=='-'){
      Subtraction().execute(stackedNumbers);
    }else if(enteredNumber=='*'){
      Multiply().execute(stackedNumbers);
    }else if(enteredNumber=='/'){
      Divide().execute(stackedNumbers);
    }else{
      AddNumber();
    }
    setState(() {

    });
    ClearNumber();
  }

  AddNumber() {
    setState(() {
      stackedNumbers.add(enteredNumber);
      ClearNumber();
    });
  }

  GetStack() {
    String value = "";
    if (stackedNumbers.isNotEmpty) {
      value = stackedNumbers.toString();
      return value;
    } else {
      return "";
    }
  }

  SingleChildScrollView numberDisplay() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(bottom: numPadding, top: numPadding),
          child: Center(
            child: Text(
              enteredNumber,
              style: TextStyle(fontSize: 50, color: textColor),
            ),
          )),
    );
  }

  Container stackDisplay() {
    return Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(bottom: numPadding, top: numPadding),
          child: Center(
            child: Text(
              GetStack(),
              style: TextStyle(fontSize: 50, color: textColor),
            ),
          ),
    );
  }

  Row clearBtns() {
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
                onPressed: () => ClearNumber(),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: Text(
                  "Clear",
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
                    onPressed: () => ClearAll(),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent),
                    child: Text(
                      "Clear All",
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
                onPressed: () => CheckInput(),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
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
                onPressed: () => EnterNumber("0"),
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
                onPressed: () => EnterNumber("."),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: Text(
                  ".",
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
              onPressed:  () {
            EnterNumber("+");
            setState(() {});
            },
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
              onPressed: () => EnterNumber("1"),
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
              onPressed: () => EnterNumber("2"),
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
              onPressed: () => EnterNumber("3"),
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
              onPressed: () {
                EnterNumber("-");
                setState(() {});
              },
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
              onPressed: () => EnterNumber("4"),
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
              onPressed: () => EnterNumber("5"),
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
              onPressed: () => EnterNumber("6"),
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
              onPressed: () {
                EnterNumber("/");
                setState(() {});
              },
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
              onPressed: () => EnterNumber("7"),
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
              onPressed: () => EnterNumber("8"),
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
              onPressed: () => EnterNumber("9"),
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
              onPressed: () {
                EnterNumber("*");
                setState(() {});
              }
              ,
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
