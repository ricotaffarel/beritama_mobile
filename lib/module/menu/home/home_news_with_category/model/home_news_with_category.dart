class HomeNewsWithCategoryModel {
  String? createdAt;
  String? updatedAt;
  String? id;
  String? newsCategoryName;
  String? newsCategoryDescription;
  int? aliasCode;

  HomeNewsWithCategoryModel({
    this.createdAt,
    this.updatedAt,
    this.id,
    this.newsCategoryName,
    this.newsCategoryDescription,
    this.aliasCode,
  });

  factory HomeNewsWithCategoryModel.fromJson(Map<String, dynamic> json) {
    return HomeNewsWithCategoryModel(
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      id: json['id'],
      newsCategoryName: json['newsCategoryName'],
      newsCategoryDescription: json['newsCategoryDescription'],
      aliasCode: json['aliasCode'],
    );
  }
}
