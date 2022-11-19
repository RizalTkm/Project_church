import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:project_church/core/failures/main_failure.dart';
import 'package:project_church/data/models/Usermodel_Local.dart/user_model_local.dart';

import 'package:project_church/data/models/user_model_remote/user_model.dart';

abstract class LocalStorageRepository {
  Future<Either<Mainfailure, String>> GetToken();
  Future<Either<Mainfailure, String>> SaveToken(String token);
  Future<Either<Mainfailure, Result>> GetUser();
  Future<Either<Mainfailure, Result>> SaveUser(Result userCredentials);
  Future<void> ClearData();
}
