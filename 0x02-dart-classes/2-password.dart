class Password {
  String password = '';

  isValid() {
    if (password.length >= 8 && password.length <= 16) {
      if (password.contains(RegExp(r'[A-Z]'))) {
        if (password.contains(RegExp(r'[a-z]'))) {
          if (password.contains(RegExp(r'[0-9]'))) {
            return true;
          }
        }
      }
    }
  }

  @override
  String toString() {
    return 'Your Password is: ${password}';
  }
}
