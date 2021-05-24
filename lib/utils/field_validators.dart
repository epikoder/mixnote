import 'package:mixnote/utils/regex.dart';

String? emailValidator(String? value) {
  return value!.isEmpty
      ? 'email required'
      : !emailRegExp.hasMatch(value.trim())
          ? 'Invalid email address'
          : null;
}

String? passwordValidator(String? value) {
  return value!.isEmpty
      ? 'password required'
      : value.length < 8
          ? 'password is too short'
          : null;
}

String? phoneValidator(String? value) {
  return value!.isEmpty
      ? 'Phone required'
      : !phoneRegExp.hasMatch(value)
        ? 'Phone is invalid' : null;
}