import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyTextInput()
));

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  
  final TextEditingController controller = new TextEditingController();
  
  String result = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Input Text"), backgroundColor: Colors.indigoAccent,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.text_fields, size: 200.0, color: Colors.pink),
              
              new Container(
                padding: new EdgeInsets.symmetric(horizontal: 30.0),
                child: new TextField(
                decoration: new InputDecoration(
                  hintText: "Type in here!"
                ),
                onSubmitted: (String str) {
                  setState(() {
                     result += '\n\r' +str;                                   
                     controller.text = '';
                  });
                },
                  controller: controller
                ), 
              ),
              new Text(result, style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, wordSpacing: 10.0),)
            ],
          ),
        ),
      )
    );
  }
}