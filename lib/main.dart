import 'package:flutter/material.dart';


void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleaCalculatorState createState() => _SimpleaCalculatorState();
}
class _SimpleaCalculatorState extends State<SimpleCalculator> {

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor) {

    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide(
                  color: Colors.white,
                  width: 1,
                  style: BorderStyle.solid
              )
          ),
          padding: EdgeInsets.all(16.0),
          onPressed: null,
          child: Text(
              buttonText,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
              )
          )
      ),
    )

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Calculator')),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text("0", style: TextStyle(fontSize: 38)),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text("0", style: TextStyle(fontSize: 48)),
          ),
          Expanded(
            child: Divider(),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("C", 1, Colors.redAccent),
                        buildButton("÷", 1, Colors.blue),
                        buildButton("back", 1, Colors.blue),
                        ]
                    ),
                    TableRow(
                        children: [
                        buildButton("back", 1, Colors.blue),
                        buildButton("back", 1, Colors.blue),
                        buildButton("back", 1, Colors.blue),

                        Container(
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: BorderSide(
                                color: Colors.white,
                                width: 1,
                                style: BorderStyle.solid
                              )
                            ),
                            padding: EdgeInsets.all(16.0),
                            onPressed: null,
                            child: Text(
                              "C",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white
                              )
                            )
                          ),
                        )
                      ]
                    )
                  ],
                )
              )
            ],
          )
        ],
      ),
    );
  }
}