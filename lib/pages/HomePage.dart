import 'package:cvcandgo/pages/ConectsePage.dart';
import 'package:cvcandgo/pages/SendDocuments.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 55,
                              child: Image.asset('images/icone-laranja.png')),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Olá',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 30)),
                              Text(
                                'Murillo Rosa',
                                style: TextStyle(
                                    fontFamily: 'OpenSans-Regular',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: 20),
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
                        Icon(Icons.description,
                            size: 50, color: Theme.of(context).primaryColor),
                        'Enviar Documentos', (context) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => SendDocuments(),
                          ));
                    }),
                    this.buildMenu(
                        context,
                        Icon(Icons.supervisor_account,
                            size: 50, color: Theme.of(context).primaryColor),
                        'CVC Conecte-se', (context) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ConectsePage(),
                          ));
                    }),
                    this.buildMenu(
                        context,
                        Icon(Icons.accessibility_new,
                            size: 50, color: Theme.of(context).primaryColor),
                        'Guia Virtual',
                        () {}),
                    this.buildMenu(
                        context,
                        Icon(Icons.gavel,
                            size: 50, color: Theme.of(context).primaryColor),
                        'Restrições',
                        () {}),
                    this.buildMenu(
                        context,
                        Icon(Icons.business_center,
                            size: 50, color: Theme.of(context).primaryColor),
                        'Meu Intercâmbio',
                        () {}),
                    this.buildMenu(
                        context,
                        Icon(Icons.add_shopping_cart,
                            size: 50, color: Theme.of(context).primaryColor),
                        'Chicletinho',
                        () {}),
                  ],
                )
              ],
            )),
          ),
        ],
      ),
    );
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
                        fontSize: 15, color: Theme.of(context).primaryColor)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
