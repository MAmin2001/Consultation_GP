

import 'package:dio/dio.dart';

class DioHelper
{
  static late Dio dio;

  static init()
  {
    dio= Dio(
      BaseOptions(
        baseUrl: 'http://create-env.eba-ejruuqh8.us-east-1.elasticbeanstalk.com/api/v1',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type':'application/json',
          'Accept':'application/json'
        }
        // receiveTimeout: ,
        // connectTimeout: ,
      )
    );
  }


  static Future <Response> getData({

     required String url,
     required  Map<String,dynamic> query
})async
  {
    return await dio.get(url,queryParameters: query);
  }


  static Future <Response> postData({

    required String url,
     Map<String,dynamic>? query,
     required Map<String,dynamic> data

  })async
  {
    return await dio.post
      (
        url,
        queryParameters: query,
        data: data
      );
  }






}