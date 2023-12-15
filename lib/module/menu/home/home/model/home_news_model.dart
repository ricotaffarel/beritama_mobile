class HomeNewsModel {
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
  String? trainingDate;
  String? fileName;
  String? filePath;
  int? counterView;
  String? newsEmotion;
  String? newsCategoryId;
  NewsCategory? newsCategory;

  HomeNewsModel({
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

  factory HomeNewsModel.fromJson(Map<String, dynamic> json) {
    return HomeNewsModel(
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
  String? createdAt;
  String? updatedAt;
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
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      id: json['id'],
      newsCategoryName: json['newsCategoryName'],
      newsCategoryDescription: json['newsCategoryDescription'],
      aliasCode: json['aliasCode'],
    );
  }
}
