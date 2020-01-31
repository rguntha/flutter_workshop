import 'package:flutter/material.dart';
void main()
{
  runApp(lgpage());
}
class lgpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:lgpg(),
    );
  }
}
class lgpg extends StatefulWidget {
  @override
  _lgpgState createState() => _lgpgState();
}

class _lgpgState extends State<lgpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Login',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.black),),
        centerTitle: true,
      ),
      body:ListView(children: <Widget>[
        Image.asset('assets/imgg.jpg'),
        tf(false,"Username: "),
        tf(true,"Password: "),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: RaisedButton(
          child: Text("SUBMIT"),
          onPressed: (){},
          color: Colors.green,
          
          ),
        )
      ],)
    );
  }
  Widget tf(bool ot, String s)
  {
    return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex:1,
                child: Text(s)),
              Expanded(
                flex:2,
                child: TextField(
                  obscureText: ot,
                ),
              ),
            ],
          ),
        );
  }
}