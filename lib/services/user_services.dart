import '../services/services.dart';
import '../models/api_return_value.dart';
import '../models/user.dart';

class UserService {
  static Future<ApiReturnValue<User>> login(
    String email,
    String password,
  ) async {
    final url = BASEURL + 'login';

    final data = {'email': email, 'password': password};

    var response = await dio.post(url, data: data);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Failed to login');
    }

    User user = User.fromJson(response.data['data']['user']);
    User.token = response.data['data']['access_token'];

    return ApiReturnValue(value: user);
  }

  static Future<ApiReturnValue<User>> register(
    String username,
    String email,
    String password,
  ) async {
    final url = BASEURL + 'register';

    final data = {
      'username': username,
      'email': email,
      'password': password,
      'password_confirmation': password,
    };

    var response = await dio.post(url, data: data);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Registration has failed');
    }

    User user = User(name: username, username: username, email: email);
    User.token = response.data['data']['access_token'];

    return ApiReturnValue(value: user);
  }
}
