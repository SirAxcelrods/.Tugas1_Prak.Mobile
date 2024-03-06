import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   //implementasi appbar
        title: Text('LOGIN'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(  //implementasi single scroll
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Image.asset(   //implementasi gambar
                  'images/yupien.jpg',
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Nama : Nanang Tri Handoyo\nNIM : 123210058',   //implementasi text
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(     //implementasi texfield
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(     //implementasi button
                    onPressed: () {

                    },
                    child: Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('Register'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(      //implementasi row
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/mbkm.png',
                    width: 100,
                    height: 100,
                  ),
                  Image.asset(
                    'images/jif.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'images/msib.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
