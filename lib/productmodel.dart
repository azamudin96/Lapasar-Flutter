import 'package:json_annotation/json_annotation.dart';

part 'productmodel.g.dart';

@JsonSerializable()
class ProductList {
  @JsonKey(name: '_id')
  String sId;
  @JsonKey(name: 'sku')
  String sku;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'brand')
  String brand;
  @JsonKey(name: 'model')
  String model;
  @JsonKey(name: 'version')
  String version;
  @JsonKey(name: 'images')
  List<String> images;
  @JsonKey(name: 'tags')
  List<String> tags;
  @JsonKey(name: 'active')
  bool active;
  @JsonKey(name: 'moq')
  int moq;
  @JsonKey(name: 'isNew')
  bool isNew;
  @JsonKey(name: 'isBest')
  bool isBest;
  @JsonKey(name: 'createdDate')
  String createdDate;
  @JsonKey(name: 'category')
  List<String> category;
  @JsonKey(name: 'price')
  int price;
  @JsonKey(name: 'expiry_date')
  String expiryDate;
  @JsonKey(name: 'promotions')
  String promotions;

  ProductList();

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListToJson(this);
}
