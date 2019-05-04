import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatefulWidget {
  String nome;

  ChatPage(this.nome);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController editController = TextEditingController();

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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.brown.shade800,
                              child: Icon(Icons.person, color: Colors.white),
                            ),
                            SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(this.widget.nome,
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 25,
                                      color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: StreamBuilder(
                      stream: Firestore.instance.collection("chat").snapshots(),
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                          case ConnectionState.waiting:
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          default:
                            return ListView.builder(
                                reverse: true,
                                itemCount: snapshot.data.documents.length,
                                itemBuilder: (context, index) {
                                  List r =
                                      snapshot.data.documents.reversed.toList();
                                  print('Data ${r[index].data}');
                                  return ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.brown.shade800,
                                      child: Icon(Icons.person, color: Colors.white),
                                    ),
                                    title: Text(r[index].data['nome']),
                                    subtitle: Text(r[index].data['mensagem']),
                                  );
                                });
                        }
                      }),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: TextFormField(
                      controller: editController,
                      decoration: InputDecoration(
                          disabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none)),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none)),
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: 'Enviar uma mensagem',
                          labelText: 'Enviar uma mensagem'),
                    )),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        child: IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () async {
                            Firestore.instance.collection("chat").add({
                              'imagem':
                                  'https://static1.purepeople.com.br/articles/3/26/44/73/@/3010610-maquiagem-de-sandy-e-sua-marca-registrad-950x0-2.jpg',
                              'mensagem': editController.text,
                              'nome': this.widget.nome
                            });
//                                .collection('mensagens')
//                                .add({
//                              'imagem':
//                              'https://static1.purepeople.com.br/articles/3/26/44/73/@/3010610-maquiagem-de-sandy-e-sua-marca-registrad-950x0-2.jpg',
//                              'mensagem': editController.text,
//                              'nome': 'teste' + ''
//                            });
                            editController.text = '';
                          },
                        ))
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  @override
  void initState() {
    super.initState();
  }
}
