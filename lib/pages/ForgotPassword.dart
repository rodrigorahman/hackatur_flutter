import 'package:cvcandgo/components/ErrorMessage.dart';
import 'package:cvcandgo/components/dialog_component.dart';
import 'package:cvcandgo/pages/FirstAccess.dart';
import 'package:cvcandgo/pages/HomePage.dart';
import 'package:cvcandgo/services/RestTemplate.dart';
import 'package:flutter/material.dart';


class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController loginController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var errorMessage = {"display": false, "message": ''};

  void _enviarEmail(context) {
    setState(() {
      errorMessage = {"display": false, "message": ' '};
    });

    if (_formKey.currentState.validate()) {
      var rest = RestTemplate(context);

      rest.dio.post('http://192.168.251.24:8080/auth/forgot', data: {
        "email": loginController.text,
      }).then((d) {
        showDialogMessage(context, 'Sucesso', 'Senha enviada para seu e-mail');
      }).catchError((err) {
        print(err);
        setState(() {
          errorMessage = {
            "display": true,
            "message": 'Erro ao recuperar senha'
          };
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueceu a senha?'),
      ),
      body: Stack(
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
              alignment: Alignment.topCenter,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset('images/logo_colorido.png'),
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
                              return 'E-mail Obrigatório';
                            }
                          },
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {
                              Future.delayed(
                                  Duration.zero,
                                  () => this._enviarEmail(context));
                            },
                            child: Text('Recuperar',
                                style: TextStyle(color: Colors.white)),
                            color: Colors
                                .transparent, //Color.fromRGBO(252, 117, 59, 1),
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white24),
                            ),
                          ),
                        ),
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
