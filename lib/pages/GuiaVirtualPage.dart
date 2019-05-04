import 'package:cvcandgo/pages/ComunicacaoUniversaoPage.dart';
import 'package:cvcandgo/pages/ConectsePage.dart';
import 'package:cvcandgo/pages/Phrases.dart';
import 'package:cvcandgo/pages/StepByStep.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GuiaVirtualPage extends StatefulWidget {
  @override
  _GuiaVirtualPageState createState() => _GuiaVirtualPageState();
}

class _GuiaVirtualPageState extends State<GuiaVirtualPage> {
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
                      top: 40,
                      left: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('GUIA VIRTUAL',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontFamily: 'OpenSans',fontSize: 30, color: Colors.white)),
                              Container(
                                width: 300,
                                child: Text(
                                  'A AJUDA QUE VOCÊ PRECISA PARA CURTIR SEU INTERCÂMBIO COM TRANQUILIDADE',
                                  style: TextStyle(fontFamily: 'OpenSans-Regular',fontSize: 15, color: Colors.white),
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
                        Icon(Icons.live_tv,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Aulas', (context) {
                      _openAulas();
                    }),
                    this.buildMenu(
                        context,
                        Icon(Icons.sentiment_satisfied,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Comunicação', (context) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ComunicacaoUniversalPage(),
                          ));
                    }),
                    this.buildMenu(
                        context,
                        Icon(Icons.g_translate,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Frases Mais Utilizadas', (context) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Phrases(),
                          ));
                    }),
                    this.buildMenu(
                        context,
                        Icon(Icons.timeline,
                            size: 50, color: Color.fromRGBO(74, 41, 151, 1)),
                        'Passo a Passo', (context) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => StepByStep(),
                          ));
                    }),
                  ],
                )
              ],
            )),
          ),
        ],
      ),
    );
  }

  _openAulas() async {
    const url =
        'https://www.youtube.com/watch?v=MN7Vm_g_ySs&list=PLT5RNaPoRt_CWtjGGiz8etPczLkPv1Lzv';
    if (await canLaunch(url)) {
      await launch(url);
      return Text('');
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildMenu(context, Icon icon, String text, onPressed) {
    return GestureDetector(
      onTap: () {
        onPressed(context);
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
