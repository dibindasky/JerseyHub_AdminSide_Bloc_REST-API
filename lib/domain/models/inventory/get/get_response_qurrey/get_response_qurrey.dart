import 'package:json_annotation/json_annotation.dart';

part 'get_response_qurrey.g.dart';

@JsonSerializable()
class GetResponseQurrey {
  int? page;

  GetResponseQurrey({this.page});

  factory GetResponseQurrey.fromJson(Map<String, dynamic> json) {
    return _$GetResponseQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetResponseQurreyToJson(this);
}
