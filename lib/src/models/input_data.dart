import 'package:quiver/core.dart';

class InputData {
  String name;
  String password;
  String confirmPassword;
  String captcha;
  String messageCode;

  InputData(
      {required this.name,
      required this.password,
      required this.captcha,
      required this.messageCode,
      required this.confirmPassword});

  @override
  String toString() {
    return 'InputData($name, $password, $captcha, $messageCode, $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    if (other is InputData) {
      return name == other.name &&
          password == other.password &&
          captcha == other.captcha &&
          messageCode == other.messageCode &&
          confirmPassword == other.confirmPassword;
    }
    return false;
  }

  @override
  int get hashCode =>
      hashObjects([name, password, captcha, messageCode, confirmPassword]);
}
