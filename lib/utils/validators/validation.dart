
class Validator {
  ///Empty  Text Validation
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required ';
    }
    return null;
  }
  static String? validateEmail ( String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required ';
    }
    //Regular expression foe email validation
    final emailRegExp =RegExp(r'^[\w-.]+@([\w-]+\.)[\w-]{2,4}$');

    if (emailRegExp.hasMatch(value)){
      return 'invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    // check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    // check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must be at least one uppercase letter.';
    }

    // check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must be at least one number.';
    }

    // check for the special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":|<>]'))) {
      return 'Password must be at least one special character.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    // Regular expression for phone number validation (assuming at least 10-digit phone number format)
    final phoneRegExp = RegExp(r'^\d{10,}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (at least 10 digits required)';
    }

    return null;
  }
}