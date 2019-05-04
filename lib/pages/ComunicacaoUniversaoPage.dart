import 'package:flutter/material.dart';

class ComunicacaoUniversalPage extends StatefulWidget {
  @override
  _ComunicacaoUniversalPageState createState() =>
      _ComunicacaoUniversalPageState();
}

class _ComunicacaoUniversalPageState extends State<ComunicacaoUniversalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset('images/cvc-logo.png'),
        ),
      )),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/bg.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('COMUNICAÇÃO UNIVERSAL',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      color: Colors.white,
                                      fontSize: 30)),
                              Container(
                                width: 300,
                                child: Text(
                                  'AQUI VOCÊ ENCONTRA ALGUMAS FIGURAS QUE IRÃO LHE AJUDAR A SE COMUNICAR QUANDO NÃO ENCONTRAR AS PALAVRAS',
                                  style: TextStyle(
                                      fontFamily: 'OpenSans-Regular',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 40, top: 20, bottom: 10),
                    child: Text(
                      'ESCOLHA UM ITEM',
                      style: TextStyle(fontSize: 15, fontFamily: 'OpenSans'),
                    )),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisSpacing: 0,
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  physics: ScrollPhysics(),
                  children: [
                    this.buildMenu(
                        context,
                        Icon(Icons.wc,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Banheiros'),
                    this.buildMenu(
                        context,
                        Icon(Icons.schedule,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Que horas São?'),
                    this.buildMenu(
                        context,
                        Icon(Icons.wifi,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Wifi'),
                    this.buildMenu(
                        context,
                        Icon(Icons.import_export,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Trocar Dinheiro'),
                    this.buildMenu(
                        context,
                        Icon(Icons.fastfood,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Comida'),
                    this.buildMenu(
                        context,
                        Icon(Icons.local_phone,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Telefone'),
                    this.buildMenu(
                        context,
                        Icon(Icons.hotel,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Hotel'),
                    this.buildMenu(
                        context,
                        Icon(Icons.local_hospital,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Hospital'),
                  ],
                )
              ],
            )),
          ),
        ],
      ),
    );
  }

  Widget buildMenu(context, Icon icon, String text) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              // return object of type Dialog
              return AlertDialog(
                title: new Text(text),
                content: Icon(icon.icon, size: 300, color: Color.fromRGBO(74, 41, 151, 1)),
                actions: <Widget>[
                  // usually buttons at the bottom of the dialog
                  new FlatButton(
                    child: new Text("Fechar", style: TextStyle(color: Color.fromRGBO(74, 41, 151, 1)),),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey[400], blurRadius: 10, offset: Offset(2, 2))
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon,
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(text,
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(74, 41, 151, 1))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
