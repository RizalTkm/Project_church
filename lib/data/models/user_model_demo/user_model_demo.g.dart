// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_demo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModelDemo _$UserModelDemoFromJson(Map<String, dynamic> json) =>
    UserModelDemo(
      email: json['email'] as String?,
      password: json['password'] as String?,
      aadharId: json['aadharId'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UserModelDemoToJson(UserModelDemo instance) =>
    <String, dynamic>{
      'aadharId': instance.aadharId,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
