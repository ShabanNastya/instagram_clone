part of 'connectivity_bloc.dart';

enum ConnectivityStatus { loading, success, error }

@freezed
abstract class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState(
      {@Default(ConnectivityStatus.loading)
          ConnectivityStatus connectivityStatus}) = _ConnectivityState;

  factory ConnectivityState.loading() =>
      ConnectivityState(connectivityStatus: ConnectivityStatus.loading);

  factory ConnectivityState.success() =>
      ConnectivityState(connectivityStatus: ConnectivityStatus.success);

  factory ConnectivityState.error() =>
      ConnectivityState(connectivityStatus: ConnectivityStatus.error);
}
