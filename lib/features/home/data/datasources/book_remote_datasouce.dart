import 'package:booklab/core/core.dart';
import 'package:booklab/core/errors/error.dart';
import 'package:booklab/features/home/data/datasources/book_api_client.dart';
import 'package:booklab/features/home/data/models/book_list.dart';
import 'package:booklab/features/home/data/models/book_model.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

// ignore: one_member_abstracts
abstract class BookRemoteDataSource {
  Future<List<BookModel>> getBooks({
    required bool fromRemote,
  });
}

@LazySingleton(as: BookRemoteDataSource)
class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  BookRemoteDataSourceImpl({
    required this.networkInfo,
    // required this.localDataStorage,
    required this.dio,
  }) : super() {
    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        logPrint: print, // retry count (optional)
        retryDelays: const [
          Duration(seconds: 1), // wait 1 sec before first retry
          Duration(seconds: 2), // wait 2 sec before second retry
          Duration(seconds: 3), // wait 3 sec before third retry
        ],
      ),
    );
    client = BookApiClient(
      dio,
      baseUrl: dotenv.env[EnvConstants.baseUrl]!,
    );
  }

  final NetworkInfo networkInfo;
  // final LocalDataStorage localDataStorage;
  final Dio dio;
  late final BookApiClient client;

  @override
  Future<List<BookModel>> getBooks({
    required bool fromRemote,
  }) async {
    if (fromRemote) {
      // final aAuthToken = await localDataStorage.getAccessToken();
      // if (aAuthToken == null) {
      //   throw const BookLabException.app('No access token found, please login');
      // }
      if (await networkInfo.isConnected) {
        final response = await client.getBooks(
          aApiKey: dotenv.env[EnvConstants.aApiKey]!,
          aApiHost: dotenv.env[EnvConstants.aApiHost]!,
        );
        return BookListModel.fromJson(
          response.response.data as Map<String, dynamic>,
        ).list;
      } else {
        throw const BookLabException.noInternet();
      }
    }
    throw const BookLabException.noInternet();
  }
}
