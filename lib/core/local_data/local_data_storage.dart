import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class LocalDataStorage {
  Future<String?> getAccessToken();

  Future<void> saveAccessToken(String token);

  // Future<void> saveUser(UserModel token);

  // Future<UserModel?> getUser();

  Future<String?> getRefreshToken();

  Future<void> saveRefreshToken(String token);

  Future<void> clear();
}

@LazySingleton(as: LocalDataStorage)
class LocalDataStorageImpl implements LocalDataStorage {
  LocalDataStorageImpl(this.storage);

  final FlutterSecureStorage storage;

  @override
  Future<void> clear() async {
    await storage.deleteAll();
  }

  @override
  Future<String?> getAccessToken() {
    return storage.read(key: accessToken);
  }

  @override
  Future<String?> getRefreshToken() {
    return storage.read(key: refreshToken);
  }

  @override
  Future<void> saveAccessToken(String token) {
    return storage.write(key: accessToken, value: token);
  }

  @override
  Future<void> saveRefreshToken(String token) {
    return storage.write(key: refreshToken, value: token);
  }

  // @override
  // Future<UserModel?> getUser() {
  //   return storage.read(key: userKey).then((value) {
  //     if (value == null) {
  //       return null;
  //     }
  //     return UserModel.fromJson(json.decode(value));
  //   });
  // }

  // @override
  // Future<void> saveUser(UserModel user) {
  //   return storage.write(key: userKey, value: json.encode(user.toJson()));
  // }
}

const String accessToken = 'accessToken';
const String refreshToken = 'refreshToken';
const String userKey = 'user';
