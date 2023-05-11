import 'package:json_annotation/json_annotation.dart';
part 'authorization_request.g.dart';

@JsonSerializable()
class AuthorizationRequest {
  final String? username;
  final String? password;
  AuthorizationRequest({required this.username, required this.password});

  factory AuthorizationRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorizationRequestToJson(this);
}
