class Validation {
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters longg';
    }
    return null;
  }
  static String? validateTitle(String value) {
    if (value.isEmpty) {
      return 'Please enter meet title';
    }
    if (value.length < 6) {
      return 'Title must be at least 3 characters longg';
    }
    return null;
  }


}
