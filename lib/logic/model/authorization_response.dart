import 'package:json_annotation/json_annotation.dart';
part 'authorization_response.g.dart';

@JsonSerializable()
class AuthorizationResponse {
  final String? refresh;
  final String? access;

  AuthorizationResponse(
      {required this.refresh, required this.access,});

  factory AuthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorizationResponseToJson(this);
}


