import 'package:json_annotation/json_annotation.dart';

part 'user_model_demo.g.dart';

@JsonSerializable()
class UserModelDemo {
  @JsonKey(name: 'aadharId')
  String? aadharId;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'password')
  String? password;

  // @JsonKey(name: 'token')
  // String? token;

  UserModelDemo({this.email, this.password, this.aadharId, this.name});

  factory UserModelDemo.fromJson(Map<String, dynamic> json) {
    return _$UserModelDemoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelDemoToJson(this);
}
