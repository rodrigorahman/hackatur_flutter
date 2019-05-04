import 'package:cvcandgo/components/ErrorMessage.dart';
import 'package:cvcandgo/pages/HomePage.dart';
import 'package:cvcandgo/services/RestTemplate.dart';
import 'package:flutter/material.dart';
import 'package:cvcandgo/pages/ForgotPassword.dart';
import 'package:cvcandgo/storage.dart';

class FirstAccess extends StatefulWidget {
  @override
  _FirstAccessState createState() => _FirstAccessState();
}

class _FirstAccessState extends State<FirstAccess> {
  TextEditingController loginController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var errorMessage = {"display": false, "message": ''};

  _login(context) {
    setState(() {
      errorMessage = {"display": false, "message": ' '};
    });

    if (_formKey.currentState.validate()) {
      var rest = RestTemplate(context);
      print({
        "email": loginController.text,
        "password": senhaController.text
      });
      rest.dio.post('http://192.168.251.24:8080/login', data: {
        "email": loginController.text,
        "password": senhaController.text
      }).then((d) async{
        Storage.setToken(d.headers['authorization'][0]).then((d) {
          RestTemplate.withAuthentication(context).dio
              .get('/cvc/systems/users/${loginController.text}').then((d) async {
            Storage.setUser(d.data).then((d){
              print(d);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomePage(),
                ),
                    (ctx) => false);
            });
          });
        });


      }).catchError((err) {
        print(err);
        setState(() {
          errorMessage = {
            "display": true,
            "message": 'Login ou Senha inválidos'
          };
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset('images/logo_branco.png'),
                        ),
                        ErrorMessage(errorMessage),
                        TextFormField(
                          controller: loginController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white24,
                              prefixIcon: Icon(Icons.person),
                              hintText: 'E-mail',
                              labelText: 'E-mail',
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 0))),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Login obrigatório';
                            }
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          obscureText: true,
                          controller: senhaController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white24,
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Senha',
                              labelText: 'Senha',
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 0))),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Senha obrigatório';
                            }
                          },
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {
                              _login(context);
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
                ),
              )),
        ],
      ),
    );
  }
}
