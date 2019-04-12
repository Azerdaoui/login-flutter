import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login>{
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  var _username="";
  void _submit(){
    setState(() {
      _username = _usernameController.text;
    });
  }
  void _clear(){
    setState(() {
      _usernameController.clear();
      _passwordController.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: new AppBar(
        title: new Text('Login'),
      ),
      body: new Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 50),
        child: new ListView(
          children: <Widget>[
            // new Image.asset('images/logo.png', width: 100, height: 50,),
            new Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.fromLTRB(5, 20, 5, 5),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _usernameController,
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    maxLength: 10,
                    decoration: new InputDecoration(
                      icon: Icon(Icons.account_circle),
                      hintText: 'Aa..',
                      labelText: 'Username',
                    ),
                  ),
                  new TextField(
                    controller: _passwordController,
                    obscureText: true,
                    textDirection: TextDirection.ltr,
                    autofocus: false,
                    decoration: new InputDecoration(
                      icon: Icon(Icons.security),
                      hintText: 'Aa..',
                      labelText: 'Password'
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(10)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        padding: EdgeInsets.only(right: 50),
                        child: FlatButton.icon(
                          onPressed: _submit,
                          icon: Icon(Icons.check),
                          label: Text('Submit'),
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.only(left: 50),
                        child: FlatButton.icon(
                          color: Colors.orange,
                          icon: Icon(Icons.clear),
                          label: Text('Clear'),
                          textColor: Colors.white,
                          onPressed: _clear,
                        ),
                      ),
                    ],
                  ),
                  new Padding(padding: EdgeInsets.only(top: 40)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text('Welcome $_username !', style: new TextStyle(fontSize: 28, fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }  
}