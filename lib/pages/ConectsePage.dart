import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cvcandgo/pages/ChatPage.dart';
import 'package:flutter/material.dart';

class ConectsePage extends StatefulWidget {
  @override
  _ConectsePageState createState() => _ConectsePageState();
}

class _ConectsePageState extends State<ConectsePage> {
  List<dynamic> pessoas = [
    {
      'nome': 'Rodrigo Almeida',
      'cidade': 'Nova York',
      'imagem':
          'https://static1.purepeople.com.br/articles/3/26/44/73/@/3010610-maquiagem-de-sandy-e-sua-marca-registrad-950x0-2.jpg'
    },
    {
      'nome': 'Adriana Bartoline',
      'cidade': 'Orlando',
      'imagem':
          'https://static1.purepeople.com.br/articles/3/26/44/73/@/3010610-maquiagem-de-sandy-e-sua-marca-registrad-950x0-2.jpg'
    },
    {
      'nome': 'Murilo Rosa',
      'cidade': 'Espanha',
      'imagem':
          'https://static1.purepeople.com.br/articles/3/26/44/73/@/3010610-maquiagem-de-sandy-e-sua-marca-registrad-950x0-2.jpg'
    },
    {
      'nome': 'Priscila Resende',
      'cidade': 'Miami',
      'imagem':
          'https://static1.purepeople.com.br/articles/3/26/44/73/@/3010610-maquiagem-de-sandy-e-sua-marca-registrad-950x0-2.jpg'
    },
    {
      'nome': 'Thiago Robert',
      'cidade': 'Londres',
      'imagem':
          'https://static1.purepeople.com.br/articles/3/26/44/73/@/3010610-maquiagem-de-sandy-e-sua-marca-registrad-950x0-2.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Image.asset('images/cvc-logo.png', height: 25)),
        body: Stack(
          children: <Widget>[
            Container(
              height: 130,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('images/bg.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('CVC CONECTE-SE',
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 30,
                                    color: Colors.white)),
                            Text('',
                                style: TextStyle(
                                    fontFamily: 'OpenSans-Regular',
                                    fontSize: 15,
                                    color: Colors.white))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.black,
                          ),
                      itemCount: pessoas.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        var p = pessoas[index];
                        return ListTile(
                            onTap: () {
//                              Firestore.instance
//                                  .collection("chat")
//                                  .add({}).then((d) {
                              Firestore.instance.collection("chat")
//                                    .document(d.documentID)
//                                    .collection('mensagens')
                                  .add({
                                'imagem':
                                    'https://static1.purepeople.com.br/articles/3/26/44/73/@/3010610-maquiagem-de-sandy-e-sua-marca-registrad-950x0-2.jpg',
                                'mensagem': 'Entrou no Grupo',
                                'nome': p['nome'] + ''
                              }).then((d2) {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return ChatPage('');
                                }));
                              });
                            },
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(p['imagem'])),
                            title: Text(p['nome']),
                            subtitle: Text(p['cidade']));
                      }),
                )
              ],
            ),
          ],
        ));
  }
}
