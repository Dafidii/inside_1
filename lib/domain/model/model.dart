import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

@JsonSerializable()
class UsersInfo {
  @JsonKey(name: 'uid')
  String uid;
  @JsonKey(name: 'username')
  String username;
  @JsonKey(name: 'email')
  String email;

  UsersInfo(
      {required this.uid,
        required this.username,
      required this.email,});

  factory UsersInfo.fromJson(Map<String, dynamic> json) =>
      _$UsersInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UsersInfoToJson(this);
}