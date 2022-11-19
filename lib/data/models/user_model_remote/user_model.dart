import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: 'results')
  List<Result>? results;

  UserModel({this.results});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'Email_id')
  String? Emailid;

  @JsonKey(name: 'Password')
  String? password;

  @JsonKey(name: 'Token')
  String? token;

  @JsonKey(name: 'User_image')
  String? userImage;

  Result({
    this.Emailid,
    this.password,
    this.token,
    this.userImage,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
