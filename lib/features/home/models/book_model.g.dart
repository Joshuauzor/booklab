// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      id: json['id'] as int,
      title: json['title'] as String,
      author: json['author'] as String,
      imgUrl: json['imgUrl'] as String,
      price: json['price'] as String,
      review: json['review'] as String,
      description: json['description'] as String,
      source: json['source'] as String,
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'imgUrl': instance.imgUrl,
      'price': instance.price,
      'review': instance.review,
      'description': instance.description,
      'source': instance.source,
    };
