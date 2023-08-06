import 'package:dio/dio.dart';

final adventuresApi = Dio(
  BaseOptions(
    baseUrl: 'https://api.hyll.com/api',
  ),
);
