import 'package:quiver/core.dart';

class LoginData {
  final String name;
  final String password;
  final String captcha;

  LoginData({required this.name, required this.password, required this.captcha});

  @override
  String toString() {
    return 'LoginData($name, $password, $captcha)';
  }

  @override
  bool operator ==(Object other) {
    if (other is LoginData) {
      return name == other.name && password == other.password && captcha == other.captcha;
    }
    return false;
  }

  @override
  int get hashCode => hash3(name, password, captcha);
}
