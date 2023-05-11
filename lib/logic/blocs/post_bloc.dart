
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unet/logic/authorization_provider.dart';
import 'package:unet/logic/model/authorization_response.dart';

part 'post_event.dart';

part 'post_state.dart';

part 'post_bloc.freezed.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc(this.provider) : super(_Initial());
  final AuthorizationProvider provider;
  @override
  Stream<AuthorizationState> mapEventToState(AuthorizationEvent event) async* {
    yield* event.when(
      fetchSummaryAuthorization: (username, password) async* {
        try {
          yield AuthorizationState.loadingAuthorization();
          var summary = await provider.getAuthorization(username, password);
          yield AuthorizationState.contentAuthorization(summary);
        } catch (err) {
          yield AuthorizationState.errorAuthorization(err);
        }
      },
    );
  }
}
