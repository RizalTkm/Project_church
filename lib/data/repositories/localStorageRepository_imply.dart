import 'dart:convert';

import 'package:project_church/data/models/user_model_remote/user_model.dart';
import 'package:project_church/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:project_church/domain/repositories/localStorageRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class localStorageRepositoryImply implements LocalStorageRepository {
  static const pref_token = 'Token';
  static const pref_result = 'Results';
  static const pref_emailid = 'Email_id';
  static const pref_password = 'Password';

  @override
  Future<Either<Mainfailure, String>> GetToken() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();

      final localResponse = sharedPreferences.getString(pref_token).toString();
      return Right(localResponse);
    } catch (e) {
      return Left(Mainfailure.cachefailure());
    }
  }

  @override
  Future<Either<Mainfailure, Result>> GetUser() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();

      final localResponse = sharedPreferences.getString(pref_result);
      if (localResponse != null) {
        final responseFromJson = Result.fromJson(json.decode(localResponse));

        return Right(responseFromJson);
      } else {
        return Left(Mainfailure.cachefailure());
      }
    } catch (e) {
      return Left(Mainfailure.clientFailure());
    }
    // TODO: implement GetUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Mainfailure, String>> SaveToken(String token) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();

      final userDataToStore = sharedPreferences.setString(pref_token, token);

      return Right(token);
    } catch (e) {
      return Left(Mainfailure.cachefailure());
    }
  }

  @override
  Future<Either<Mainfailure, Result>> SaveUser(Result userCredentials) async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      final savingUser = sharedPreferences.setString(
          pref_result, json.encode(userCredentials.toJson()));

      return Right(userCredentials);
    } catch (e) {
      return Left(Mainfailure.cachefailure());
    }
  }

  @override
  Future<void> ClearData() async {
    final sharedPreference = await SharedPreferences.getInstance();

    sharedPreference.clear();
    return;
  }
}
