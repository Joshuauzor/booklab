import 'package:booklab/features/home/models/book_model.dart';

class BookListModel {
  BookListModel({
    required this.list,
  });

  factory BookListModel.fromJson(Map<String, dynamic> json) => BookListModel(
        list: List<BookModel>.from(
          (json['books'] as List).map(
            (x) {
              return BookListModel.fromJson(x);
            },
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        'books': List<dynamic>.from(list.map((x) => x.toJson())),
      };

  final List<BookModel> list;
}
