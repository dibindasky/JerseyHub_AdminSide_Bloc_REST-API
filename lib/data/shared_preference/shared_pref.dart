import 'package:jerseyhub_admin/domain/models/token/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String accessKey = 'access_key';
  static const String refreshKey = 'refresh_key';

  static Future<void> setToken({required TokenModel tokenModel}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(accessKey, tokenModel.accessToken);
    preferences.setString(refreshKey, tokenModel.refreshToken);
  }
  static Future<TokenModel> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String accessToken = preferences.getString(accessKey) ?? '';
    String refreshToken = preferences.getString(refreshKey) ?? '';
    return TokenModel(accessToken: accessToken, refreshToken: refreshToken);
  }

}
