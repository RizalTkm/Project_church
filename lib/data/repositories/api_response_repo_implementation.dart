import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:project_church/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:project_church/data/data_sources/api_endpoints.dart';
import 'package:project_church/data/models/user_model_demo/user_model_demo.dart';
import 'package:project_church/data/models/user_model_remote/user_model.dart';

import 'package:project_church/domain/repositories/apiResponseRepository.dart';
import 'package:project_church/main.dart';

class ApiResponseRepoImplementation implements ApiResponseRepository {
  @override
  Future<Either<Mainfailure, List<Result>>> Getuserdata() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndpoints.endpoint1);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final userDataList = (response.data['results'] as List).map((e) {
          return Result.fromJson(e);
        }).toList();

        return Right(userDataList);
      } else {
        return Left(Mainfailure.serverFailure());
      }
    } catch (e) {
      return Left(Mainfailure.clientFailure());
    }
  }

  @override
  Future<Either<Mainfailure, Map<String, dynamic>>> SetUserData(
      String emailid, String password, String token) async {
    // // TODO: implement SetUserData
    // throw UnimplementedError();

    final response = await Dio().post(ApiEndpoints.postEndpoint2,
        data: {'emailid': emailid, 'password': password, 'token': token});
    print(response.data.toString());

    return response.data;
  }

  @override
  Future<Either<Mainfailure, UserModelDemo>> SignUp(
    String aadharId,
    String name,
    String email,
    String password,
  ) async {
    // final userdata = {'email': email, 'password': password};
    final userdata = (jsonEncode(UserModelDemo(
                aadharId: aadharId,
                name: name,
                email: email,
                password: password)
            .toJson()) as List)
        .map((e) => null);

    try {
      final dio = Dio(BaseOptions());
      final Response response =
          await dio.post(ApiEndpoints.postEndpoint2, data: userdata);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.data;

        log(body.toString());

        return Right(jsonDecode(body));
      } else {
        final failure = Mainfailure.clientFailure();

        return Left(failure);
      }
    } catch (e) {
      log(e.toString());
      return Left(Mainfailure.serverFailure());
    }
  }

  @override
  Future<Either<Mainfailure, List<UserModelDemo>>> login(
      String email, String Password) async {
    final response = await Dio().get(ApiEndpoints.getEndpoints);

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = (response.data['data'] as List).map((e) {
        return UserModelDemo.fromJson(e);
      }).toList();

      log(data.toString());

      return Right(data);
    } else {
      return Left(Mainfailure.serverFailure());
    }
  }
}
