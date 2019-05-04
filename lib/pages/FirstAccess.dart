import 'package:cvcandgo/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:cvcandgo/pages/ForgotPassword.dart';

class FirstAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/first.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
            alignment: Alignment.center,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/logo_branco.png'),
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white24,
                            prefixIcon: Icon(Icons.person),
                            hintText: 'E-mail',
                            labelText: 'E-mail',
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(width: 0)))),
                    SizedBox(height: 10),
                    TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white24,
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Senha',
                            labelText: 'Senha',
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(width: 0)))),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => HomePage(),
                              ),
                              (ctx) => false);
                        },
                        child: Text('ENTRAR',
                            style: TextStyle(color: Colors.white)),
                        color: Color.fromRGBO(252, 117, 59, 1),
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(252, 117, 59, 1),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ForgotPassword(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
