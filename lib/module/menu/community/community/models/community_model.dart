// To parse this JSON data, do
//
//     final CommunityModel = CommunityModelFromJson(jsonString);

import 'dart:convert';

CommunityModel communityModelFromJson(String str) =>
    CommunityModel.fromJson(json.decode(str));

String CommunityModelToJson(CommunityModel data) => json.encode(data.toJson());

class CommunityModel {
  DateTime createdAt;
  DateTime updatedAt;
  String id;
  String name;
  String description;
  String status;
  String address;
  Leader leader;
  String fileName;
  String filePath;

  CommunityModel({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    required this.address,
    required this.leader,
    required this.fileName,
    required this.filePath,
  });

  factory CommunityModel.fromJson(Map<String, dynamic> json) => CommunityModel(
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
        name: json["name"],
        description: json["description"],
        status: json["status"],
        address: json["address"],
        leader: Leader.fromJson(json["leader"]),
        fileName: json["file_name"],
        filePath: json["file_path"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "id": id,
        "name": name,
        "description": description,
        "status": status,
        "address": address,
        "leader": leader.toJson(),
        "file_name": fileName,
        "file_path": filePath,
      };
}

class Leader {
  dynamic id;
  dynamic name;

  Leader({
    required this.id,
    required this.name,
  });

  factory Leader.fromJson(Map<String, dynamic> json) => Leader(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
