import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class Failure {
  factory Failure.clientFailure({String? message}) = _ClientFailure;
  factory Failure.serverFailure({String? message}) = _ServerFailure;
  factory Failure.tokenExpire() = _TokenExpire;
}
