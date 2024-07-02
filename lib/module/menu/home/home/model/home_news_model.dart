// To parse this JSON data, do
//
//     final homeNewsModel = homeNewsModelFromJson(jsonString);

import 'dart:convert';

HomeNewsModel homeNewsModelFromJson(String str) =>
    HomeNewsModel.fromJson(json.decode(str));

String homeNewsModelToJson(HomeNewsModel data) => json.encode(data.toJson());

class HomeNewsModel {
  String message;
  List<Datum> data;

  HomeNewsModel({
    required this.message,
    required this.data,
  });

  factory HomeNewsModel.fromJson(Map<String, dynamic> json) => HomeNewsModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  DateTime createdAt;
  DateTime updatedAt;
  String id;
  String? title;
  String? description;
  String? author;
  String? source;
  DateTime? publishDate;
  String? newsKeywords;
  String? ambigousKeywords;
  bool isTraining;
  DateTime? trainingDate;
  String label;
  String? location;
  dynamic validatedDate;
  String? url;
  String? urlRequestId;
  dynamic isDebunking;
  int viewsTotal;
  dynamic fileName;
  dynamic filePath;
  String? newsCategoryId;
  String? response;
  NewsCategory? newsCategory;

  Datum({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.title,
    required this.description,
    required this.author,
    required this.source,
    required this.publishDate,
    required this.newsKeywords,
    required this.ambigousKeywords,
    required this.isTraining,
    required this.trainingDate,
    required this.label,
    required this.location,
    required this.validatedDate,
    required this.url,
    required this.urlRequestId,
    required this.isDebunking,
    required this.viewsTotal,
    required this.fileName,
    required this.filePath,
    required this.newsCategoryId,
    required this.response,
    required this.newsCategory,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
        title: json["title"],
        description: json["description"],
        author: json["author"],
        source: json["source"],
        publishDate: json["publish_date"] == null
            ? null
            : DateTime.parse(json["publish_date"]),
        newsKeywords: json["news_keywords"],
        ambigousKeywords: json["ambigous_keywords"],
        isTraining: json["is_training"],
        trainingDate: json["training_date"] == null
            ? null
            : DateTime.parse(json["training_date"]),
        label: json["label"],
        location: json["location"],
        validatedDate: json["validated_date"],
        url: json["url"],
        urlRequestId: json["url_request_id"],
        isDebunking: json["is_debunking"],
        viewsTotal: json["views_total"],
        fileName: json["file_name"],
        filePath: json["file_path"],
        newsCategoryId: json["news_category_id"],
        response: json["response"],
        newsCategory: json["newsCategory"] == null
            ? null
            : NewsCategory.fromJson(json["newsCategory"]),
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "id": id,
        "title": title,
        "description": description,
        "author": author,
        "source": source,
        "publish_date": publishDate?.toIso8601String(),
        "news_keywords": newsKeywords,
        "ambigous_keywords": ambigousKeywords,
        "is_training": isTraining,
        "training_date": trainingDate?.toIso8601String(),
        "label": label,
        "location": location,
        "validated_date": validatedDate,
        "url": url,
        "url_request_id": urlRequestId,
        "is_debunking": isDebunking,
        "views_total": viewsTotal,
        "file_name": fileName,
        "file_path": filePath,
        "news_category_id": newsCategoryId,
        "response": response,
        "newsCategory": newsCategory?.toJson(),
      };
}

class NewsCategory {
  DateTime createdAt;
  DateTime updatedAt;
  String id;
  String name;
  String description;
  dynamic aliasCode;

  NewsCategory({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.name,
    required this.description,
    required this.aliasCode,
  });

  factory NewsCategory.fromJson(Map<String, dynamic> json) => NewsCategory(
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
        name: json["name"],
        description: json["description"],
        aliasCode: json["alias_code"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "id": id,
        "name": name,
        "description": description,
        "alias_code": aliasCode,
      };
}
