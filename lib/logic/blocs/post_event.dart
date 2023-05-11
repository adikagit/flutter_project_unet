part of 'post_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {

  const factory AuthorizationEvent.fetchSummaryAuthorization(String username, String password) = _OrderSummaryEventAuthorization;
}
