import 'package:cvcandgo/pages/FirstAccess.dart';
import 'package:cvcandgo/pages/HomePage.dart';
import 'package:cvcandgo/storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

const baseUrl = 'http://192.168.251.24:8080';

class RestTemplate {
  var _dio = new Dio();
  var _tokenDio = new Dio();
  var context;

  RestTemplate(this.context) {
    BaseOptions options = new BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 30000,
      receiveTimeout: 30000,
    );
    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      showDialog(
          context: context,
          builder: (context) {
            return Material(
              type: MaterialType.transparency,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[CircularProgressIndicator()],
              ),
            );
          });
      return options; //continue
    }, onResponse: (Response response) {
      Navigator.of(this.context).pop();
      return response; // continue
    }, onError: (DioError e) async {
      Navigator.of(this.context).pop();
      RequestOptions options = e.response?.request;
      if (e.response?.statusCode == 403) {
//        _dio.lock();
//        _dio.interceptors.responseLock.lock();
//        _dio.interceptors.errorLock.lock();
//        dio.request(options.path, options: options);
//        try {
//          Navigator.of(this.context
//          ).push(MaterialPageRoute(
//            builder: (BuildContext context) => FirstAccess(),
//          )
//          );
//        }catch(err){
//
//        }
      }
      // Do something with response error
      return e; //continue
    }));
  }

  RestTemplate.withAuthentication(this.context) {
    BaseOptions options = new BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 30000,
      receiveTimeout: 30000,
    );

    this._dio = new Dio(options);
    this._tokenDio = new Dio(options);

    _dio.options.baseUrl = baseUrl;
    _dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      showDialog(
          context: context,
          builder: (context) {
            return Material(
              type: MaterialType.transparency,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[CircularProgressIndicator()],
              ),
            );
          });
      options.headers['Authorization'] = await Storage.getToken();
      print('url: ${options.uri}');
      print('method: ${options.method}');
      print('data: ${options.data}');
      return options; //continue
    }, onResponse: (Response response) {
      print('response: ${response}');
      print('status: ${response.statusCode}');
      Navigator.of(this.context).pop();
      return response; // continue
    }, onError: (DioError e) async {
      RequestOptions options = e.response?.request;
      print(e);
      print('error: ${e}');
      print('response: ${e.response}');
      if (e.response?.statusCode == 403) {
//        _dio.lock();
//        _dio.interceptors.responseLock.lock();
//        _dio.interceptors.errorLock.lock();
//        dio.request(options.path, options: options);
//        try {
//          Navigator.of(this.context).push(MaterialPageRoute(
//            builder: (BuildContext context) => FirstAccess(),
//          ));
//        } catch (err) {}
        // Do something with response error
        return e; //continue
      }
    }));
  }

  login() {
    return this._tokenDio.post('${baseUrl}/login', data: {
      'email': 'aapriascilanascimento2005@gmail.com',
      'password': 'mega8Tec@Senha2019'
    }).then((d) async {
      print(d.headers['authorization']);
      Storage.setToken(d.headers['authorization'][0]);
    });
  }

  Dio get dio {
    return this._dio;
  }
}
