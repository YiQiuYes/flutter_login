import 'package:quiver/core.dart';

class LoginData {
  final String name;
  final String password;
  final String captcha;
  final String messageCode;

  LoginData(
      {required this.name,
      required this.password,
      required this.captcha,
      required this.messageCode});

  @override
  String toString() {
    return 'LoginData($name, $password, $captcha)';
  }

  @override
  bool operator ==(Object other) {
    if (other is LoginData) {
      return name == other.name &&
          password == other.password &&
          captcha == other.captcha &&
          messageCode == other.messageCode;
    }
    return false;
  }

  @override
  int get hashCode => hash4(name, password, captcha, messageCode);
}
