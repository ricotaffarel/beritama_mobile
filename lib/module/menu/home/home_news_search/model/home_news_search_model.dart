class HomeNewsSearchModel {
  String? createdAt;
  String? updatedAt;
  String? id;
  String? newsTitle;
  String? newsDescription;
  String? newsAuthor;
  String? newsSource;
  String? newsPublishDate;
  String? label;
  bool? isAmbiguous;
  bool? isTraining;
  bool? trainingDate;
  String? fileName;
  String? filePath;
  int? counterView;
  String? newsEmotion;
  String? newsCategoryId;
  NewsCategory? newsCategory;

  HomeNewsSearchModel({
    this.createdAt,
    this.updatedAt,
    this.id,
    this.newsTitle,
    this.newsDescription,
    this.newsAuthor,
    this.newsSource,
    this.newsPublishDate,
    this.label,
    this.isAmbiguous,
    this.isTraining,
    this.trainingDate,
    this.fileName,
    this.filePath,
    this.counterView,
    this.newsEmotion,
    this.newsCategoryId,
    this.newsCategory,
  });

  factory HomeNewsSearchModel.fromJson(Map<String, dynamic> json) {
    return HomeNewsSearchModel(
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      id: json['id'],
      newsTitle: json['news_title'],
      newsDescription: json['news_description'],
      newsAuthor: json['news_author'],
      newsSource: json['news_source'],
      newsPublishDate: json['news_publish_date'],
      label: json['label'],
      isAmbiguous: json['is_ambiguous'],
      isTraining: json['is_training'],
      trainingDate: json['training_date'],
      fileName: json['file_name'],
      filePath: json['file_path'],
      counterView: json['counter_view'],
      newsEmotion: json['news_emotion'],
      newsCategoryId: json['newsCategoryId'],
      newsCategory: json['newsCategory'] != null
          ? NewsCategory.fromJson(json['newsCategory'])
          : null,
    );
  }
}

class NewsCategory {
  DateTime? createdAt;
  DateTime? updatedAt;
  String? id;
  String? newsCategoryName;
  String? newsCategoryDescription;
  int? aliasCode;

  NewsCategory({
    this.createdAt,
    this.updatedAt,
    this.id,
    this.newsCategoryName,
    this.newsCategoryDescription,
    this.aliasCode,
  });

  factory NewsCategory.fromJson(Map<String, dynamic> json) {
    return NewsCategory(
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      id: json['id'],
      newsCategoryName: json['newsCategoryName'],
      newsCategoryDescription: json['newsCategoryDescription'],
      aliasCode: json['aliasCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'id': id,
      'newsCategoryName': newsCategoryName,
      'newsCategoryDescription': newsCategoryDescription,
      'aliasCode': aliasCode,
    };
  }
}
