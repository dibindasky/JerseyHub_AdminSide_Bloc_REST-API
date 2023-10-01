import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class Failure {
  factory Failure.clientFailure() = _ClientFailure;
  factory Failure.serverFailure() = _ServerFailure;
  factory Failure.tokenExpire() = _TokenExpire;
}
