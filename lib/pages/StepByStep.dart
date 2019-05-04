import 'package:flutter/material.dart';

class StepByStep extends StatefulWidget {
  @override
  _StepByStepState createState() => _StepByStepState();
}


class _StepByStepState extends State<StepByStep> {
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
                          Text('Passo a Passo',
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
                      child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                        title: Text(
                          'Va para o aeroporto no dia selecionado para sua viagem com 3 hora de antecedência;',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: MediaQuery.of(context).size.width,
                      child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                        title: Text(
                          'Faça o checkin e mande despachar a sua bagagem;',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                      title: Text(
                        'Embarque para o seu destino;',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                      title: Text(
                        'Retire sua bagagem no local selecionado no aeroporto;',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                      title: Text(
                        'Pegue um taxi ate o local de sua residencia;',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: MediaQuery.of(context).size.width,
                      child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                        title: Text(
                          'Acomode-se e organize seus pertences;',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: MediaQuery.of(context).size.width,
                      child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                        title: Text(
                          'Alugue uma bike pelo período do intercâmbio;',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: MediaQuery.of(context).size.width,
                      child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                        title: Text(
                          'Ande com sua bike até a escola no qual ira fazer as aulas;',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: MediaQuery.of(context).size.width,
                      child: ListTile(leading: Icon(Icons.check, color: Color.fromRGBO(74, 41, 151, 1)),
                        title: Text(
                          'Leve os documentos para a escola',
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
