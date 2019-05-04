import 'package:flutter/material.dart';

class Restrictions extends StatefulWidget {
  @override
  _RestrictionsState createState() => _RestrictionsState();
}


class _RestrictionsState extends State<Restrictions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Image.asset('images/cvc-logo.png', height: 25)),
    body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            height: 130,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(
                    'images/bg.png'
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Restrições',
                          style: TextStyle(fontFamily: 'OpenSans',fontSize: 30, color: Colors.white)),
                    ],),
                )

              ],
            ),
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: <Widget>[
              SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Proibido beber na rua, sem cobrir a embalagem.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Ao fechar o farol, caso for virar para a direta, não precisa respeitar o farol vermelho.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Não pode Jogar lixo na rua.',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Não pode ficar pelado em público.',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    '- Se beber, não dirija.',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Se for menor de 21 anos, nem chegue perto de bebida alcoolica. E se for maior de 21 anos, nunca dê bebida para um menor.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Se for parado pela polícia, NÃO saia do carro.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Não nade fora das bandeiras com sinal de perigo.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Não se arrisque para explorar matas e florestas.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Jogar papel higiênico usado na lixeira.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Entrar de sapatos na casa dos outros.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Usar o transporte público sem pagar por ele.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    title: Text(
                      'Fazer a saudação nazista.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],

      ),
    )
    );

  }
}
