import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  var errorMessage = {"display": false, "message": ''};

  ErrorMessage(this.errorMessage);

  @override
  Widget build(BuildContext context) {
    return (errorMessage['display']
        ? Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              errorMessage['message'],
              style: TextStyle(color: Colors.red, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          )
        : Text(''));
  }
}
