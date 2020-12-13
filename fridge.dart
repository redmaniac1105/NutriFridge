import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Fridgepage(),
  ));
}
var name,answer;
var data=[{name:'Tomato',answer:'very rich in protin'}];


class Fridgepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 300),
                height: 50,
                width: 100,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Upper Rack"), 
                  onPressed: () {
                  Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => Upperrack()),
                  );
                  }          
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300),
                height: 50,
                width: 100,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Middle Rack"),               
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300),
                height: 50,
                width: 100,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Bottom Rack"),               
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300),
                height: 50,
                width: 100,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Bucket"),               
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Upperrack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              new ExpansionTile(
                title: new Text(data[0],style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
                children: <Widget>[
                    new Padding(padding: const EdgeInsets.only(top: 10)),
                    new Text(data[1],style: new TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[500]),),
                    new Padding(padding: const EdgeInsets.only(bottom: 10)),
                  ],
              )
            ],
        )
        ),
      ),
    );
      
}
}