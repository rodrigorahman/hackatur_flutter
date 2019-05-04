import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';

List<CameraDescription> cameras;

class SendDocuments extends StatefulWidget {
  @override
  _SendDocumentsState createState() => _SendDocumentsState();
}

class _SendDocumentsState extends State<SendDocuments> {
  File _image;

  List<dynamic> documentos = [
    {'documento': 'Comprovante de Renda'},
    {'documento': 'Identidade'},
    {'documento': 'Passaport'},
    {'documento': 'Comprovante de residencia'},
    {'documento': 'Matricula da escola'},
    {'documento': 'Visto para o pais'},
  ];

  Future getImage(index) async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      documentos[index]['imagem'] = 'enviado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Image.asset('images/cvc-logo.png', height: 25)),
        body: Stack(
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
                          Text('DOCUMENTAÇÃO',
                              style: TextStyle(fontFamily: 'OpenSans',fontSize: 30, color: Colors.white)),
                          Text('Anexo aqui seus documentos',
                              style: TextStyle(fontFamily: 'OpenSans-Regular',fontSize: 15, color: Colors.white))
                        ],),
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
                      itemCount: documentos.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        var doc = documentos[index];
                        return ListTile(
                            leading: (doc['imagem'] != null)
                                ? Icon(Icons.check_circle, color: Colors.green)
                                : Icon(Icons.description),
                            title: Text(doc['documento']),
                            trailing: doc['imagem'] == null
                                ? IconButton(
                                    icon: Icon(Icons.camera_enhance),
                                    onPressed: () {
                                      this.getImage(index);
                                    })
                                : null);
                      }),
                )
              ],
            ),
          ],
        ));
  }
}
