final pattern =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

String? validateTextForm(String? value) {
  if (value == null || value.isEmpty) {
    return 'This field must be filled';
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'This field must be filled';
  }
  if (!RegExp(pattern).hasMatch(value)) {
    return 'Your email is not correct';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'This field must be filled';
  } else if (value.length < 8) {
    return 'Password must atleast 8 character';
  }
  return null;
}