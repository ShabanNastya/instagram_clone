part of 'connectivity_bloc.dart';

abstract class ConnectivityEvent extends Equatable {
  final ConnectivityResult connectivityResult;

  const ConnectivityEvent(this.connectivityResult);

  @override
  List<Object?> get props => throw UnimplementedError();
}

class ConnectionChanged extends ConnectivityEvent {
  ConnectionChanged(ConnectivityResult connectivityResult)
      : super(connectivityResult);
}
