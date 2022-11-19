import 'package:dartz/dartz.dart';
import 'package:project_church/core/failures/main_failure.dart';
import 'package:project_church/data/models/user_model_demo/user_model_demo.dart';

import 'package:project_church/data/models/user_model_remote/user_model.dart';

abstract class ApiResponseRepository {
  Future<Either<Mainfailure, List<Result>>> Getuserdata();
  Future<Either<Mainfailure, Map<String, dynamic>>> SetUserData(
      String emailid, String password, String token);

  Future<Either<Mainfailure, List<UserModelDemo>>> login(
      String email, String Password);

  Future<Either<Mainfailure, UserModelDemo>> SignUp(
      String aadharId, String name, String email, String password);
}
