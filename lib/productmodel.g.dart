// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductList _$ProductListFromJson(Map<String, dynamic> json) {
  return ProductList()
    ..sId = json['_id'] as String
    ..sku = json['sku'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..brand = json['brand'] as String
    ..model = json['model'] as String
    ..version = json['version'] as String
    ..images = (json['images'] as List)?.map((e) => e as String)?.toList()
    ..tags = (json['tags'] as List)?.map((e) => e as String)?.toList()
    ..active = json['active'] as bool
    ..moq = json['moq'] as int
    ..isNew = json['isNew'] as bool
    ..isBest = json['isBest'] as bool
    ..createdDate = json['createdDate'] as String
    ..category = (json['category'] as List)?.map((e) => e as String)?.toList()
    ..price = json['price'] as int
    ..expiryDate = json['expiry_date'] as String
    ..promotions = json['promotions'] as String;
}

Map<String, dynamic> _$ProductListToJson(ProductList instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'sku': instance.sku,
      'name': instance.name,
      'description': instance.description,
      'brand': instance.brand,
      'model': instance.model,
      'version': instance.version,
      'images': instance.images,
      'tags': instance.tags,
      'active': instance.active,
      'moq': instance.moq,
      'isNew': instance.isNew,
      'isBest': instance.isBest,
      'createdDate': instance.createdDate,
      'category': instance.category,
      'price': instance.price,
      'expiry_date': instance.expiryDate,
      'promotions': instance.promotions,
    };
