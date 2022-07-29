import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'book_api_client.g.dart';

@RestApi()
abstract class BookApiClient {
  factory BookApiClient(
    Dio dio, {
    String baseUrl,
  }) = _BookApiClient;

  @GET('/books')
  Future<HttpResponse> getBooks({
    @Header('X-RapidAPI-Key') required String aApiKey,
    @Header('X-RapidAPI-Host') required String aApiHost,
  });
}
