import 'package:flutter/material.dart';

void main(){
 
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new Calculator(),
    );
  }
}

class Calculator extends StatefulWidget{

  _CalculatorPage createState()=> new _CalculatorPage();
}

class _CalculatorPage extends State<Calculator>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          height: double.infinity,
          width: double.infinity,
        color: Colors.white,
         child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Flexible(
               flex: 3,
               child: new Container(
                 height: double.infinity,
                 width: double.infinity,
                  color: Colors.black12,
                child: new Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Padding(padding: new EdgeInsets.all(20.0)),
                    Flexible(
                    flex:2,
                      child: new Text('4,125',
                        style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 52,),textAlign: TextAlign.right,
                      ),
                ),
                    new Padding(padding: new EdgeInsets.all(40.0)),
                    Flexible(
                      flex:1,
                      child: new Text('3,250 + 740 + 482 - 318',
                        style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 32),
                      ),
                    ),


                      ],
                    )

               ),
             ),
              Flexible(
                flex: 5,
                child: new Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1,child: CustomButton("C"),),
                              Flexible(flex: 1,child: CustomButton("+/-"),),
                              Flexible(flex: 1,child: CustomButton("%"),),
                              Flexible(flex: 1,child: CustomButton1("\u00F7"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1,child: CustomButton("7"),),
                              Flexible(flex: 1,child: CustomButton("8"),),
                              Flexible(flex: 1,child: CustomButton("9"),),
                              Flexible(flex: 1,child: CustomButton2()),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1,child: CustomButton("4"),),
                              Flexible(flex: 1,child: CustomButton("5"),),
                              Flexible(flex: 1,child: CustomButton("6"),),
                              Flexible(flex: 1,child: CustomButton3("-"),),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1,child: CustomButton("1"),),
                              Flexible(flex: 1,child: CustomButton("2"),),
                              Flexible(flex: 1,child: CustomButton("3"),),
                              Flexible(flex: 1,child: CustomButton4("+"),),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: new Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1,child: CustomButton("0"),),
                              Flexible(flex: 1,child: CustomButton("."),),
                              Flexible(flex: 1,child: CustomButton(" "),),
                              Flexible(flex: 1,child: CustomButton5("="),),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  String _value;
  CustomButton(this._value);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(16.0 ),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
//      decoration: new BoxDecoration(shape: BoxShape.rectangle,
//          color:Colors.white,
//          border: new Border(
//            bottom: BorderSide(
//             color: Colors.black,),
//              left: BorderSide(
//                  color: Colors.black),
//          ),),
      child: new Text(
        _value,style: new TextStyle(
        color: Colors.black,fontSize: 26.0
      ),
      ),
    );

  }
}
class CustomButton1 extends StatelessWidget {

  String _value;
  CustomButton1(this._value);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(16.0 ),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: new BoxDecoration(shape: BoxShape.circle,
        color:Colors.deepPurpleAccent,
      ),
      child: new Text(
        _value,style: new TextStyle(
          color: Colors.white,fontSize: 36.0
      ),
      ),
    );

  }
}

class CustomButton2 extends StatelessWidget {

//  String _value;
  CustomButton2();
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(16.0 ),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,

      child: new Icon(Icons.cancel,color: Colors.orangeAccent,size: 56.0,
      ),
    );

  }
}
class CustomButton3 extends StatelessWidget {

  String _value;
  CustomButton3(this._value);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(16.0 ),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: new BoxDecoration(shape: BoxShape.circle,
        color:Colors.blueAccent,
        ),
      child: new Text(
        _value,style: new TextStyle(
          color: Colors.white,fontSize: 36.0
      ),
      ),
    );

  }
}
class CustomButton4 extends StatelessWidget {

  String _value;
  CustomButton4(this._value);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(16.0 ),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: new BoxDecoration(shape: BoxShape.circle,
        color:Colors.deepOrangeAccent,
      ),
      child: new Text(
        _value,style: new TextStyle(
          color: Colors.white,fontSize: 36.0
      ),
      ),
    );

  }
}
class CustomButton5 extends StatelessWidget {

  String _value;
  CustomButton5(this._value);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(16.0 ),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: new BoxDecoration(shape: BoxShape.circle,
        color:Colors.green,
      ),
      child: new Text(
        _value,style: new TextStyle(
          color: Colors.white,fontSize: 36.0
      ),
      ),
    );

  }
}
