import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  String? name;
  String? email;
  String? phone;
  @JsonKey(name: 'block_status')
  bool? blockStatus;

  Datum({this.id, this.name, this.email, this.phone, this.blockStatus});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
