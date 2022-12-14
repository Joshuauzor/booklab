import 'package:equatable/equatable.dart';

class Books extends Equatable {
  const Books({
    required this.id,
    required this.title,
    required this.author,
    required this.imgUrl,
    required this.price,
    required this.review,
    required this.description,
    required this.source,
    this.isCustom = false,
    this.customAmt,
  });

  final int id;
  final String title;
  final String author;
  final String imgUrl;
  final String price;
  final String review;
  final String description;
  final String source;
  final bool isCustom;
  final double? customAmt;

  @override
  List<Object?> get props => [
        id,
        title,
        author,
        imgUrl,
        price,
        review,
        description,
        source,
      ];
}
