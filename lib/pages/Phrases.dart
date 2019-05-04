import 'package:flutter/material.dart';

class Phrases extends StatefulWidget {
  @override
  _PhrasesState createState() => _PhrasesState();
}


class _PhrasesState extends State<Phrases> {
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
                          Container(
                            width: 300,
                            child: Text('30 FRASES DE INGLÊS PARA VIAGEM',
                                style: TextStyle(fontFamily: 'OpenSans',fontSize: 30, color: Colors.white)),
                          ),
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
                          '1 – Can you show me where the hotel is? – Você pode mostrar onde é o hotel?',
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
                          '2 – How much for the ride? Quanto é pela corrida?',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        '3 – Is there a room available? Há um quarto disponível?',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        '4 – How much per day?  Quanto é por dia?',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        '5 – I would like to check in, please? Eu gostaria de fazer o check in, por favor?',
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
                          '6 – I would like to check out, please?  – Eu gostaria de fazer o check out, por favor?',
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
                          '7 – Quanto custa esse produto? How much does this product cost?',
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
                          '8 – Você tem em outra cor? Does it come in other color?',
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
                          '9 – Qual é a garantia? É válida no Brasil? How is the warranty? Is it valid in Brazil?',
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
                          '10 – Você pode reservar para eu voltar mais tarde? Could you save this product for me and I will come back later?',
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
                          '11 – Onde estão os produtos em promoção? Where are the product on sale?',
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
                          '12 – Tem banheiro dentro da loja? Is there any restroom at the store?',
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
                          '13 – Quanto custa esse perfume? How much does this perfume cost?',
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
                          '14 – Posso experimentar em mim?  Can I try this on me?',
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
                          '15 – Você tem algum kit com esse perfume? Do you have any kit containing this perfume on?',
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
                          '16 – Where is the beach? – Onde fica a praia?',
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
                          '17 – Where is the bar? – Onde fica o bar?',
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
                          '18 – Where can I get a trolley? – Onde posso conseguir um carrinho?',
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
                          '19 – What’s your seat number? – Qual o número da sua poltrona?',
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
                          '20 – How long does the flight take? – Quanto tempo dura este voo?',
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
