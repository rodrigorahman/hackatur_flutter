import 'package:cvcandgo/components/dialog_component.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset('images/logo_colorido.png'),
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
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {
                            Future.delayed(
                                Duration.zero,
                                () => showDialogMessage(context, 'Sucesso', 'Senha enviada para seu e-mail')
                            );
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
              )),
        ],
      ),
    );
  }
}
