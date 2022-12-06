
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../model/user.dart';
part 'auth.g.dart';

@RestApi(baseUrl: "https://638db9434190defdb74b5902.mockapi.io/api/v1/")
abstract class RestLoginAuth {
  factory RestLoginAuth(Dio dio, {String baseUrl}) = _RestLoginAuth;

  @GET("/users")
  Future<List<User>> getUsers();

  @POST("/users")
  Future<User> registerAuth(@Body() User register);

}
