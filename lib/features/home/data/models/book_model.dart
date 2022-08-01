import 'package:booklab/features/features.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.g.dart';

@JsonSerializable()
class BookModel extends Books {
  const BookModel({
    required int id,
    required String title,
    required String author,
    required String imgUrl,
    required String price,
    required String review,
    required String description,
    required String source,
    bool isCustom = false,
    double? customAmt,
  }) : super(
          id: id,
          title: title,
          author: author,
          imgUrl: imgUrl,
          price: price,
          review: review,
          description: description,
          source: source,
          isCustom: isCustom,
          customAmt: customAmt,
        );

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
