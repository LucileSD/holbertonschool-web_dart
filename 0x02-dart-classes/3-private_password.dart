class Password {
  String _password = '';

  Password({String password = ''}) {
    this._password = password;
  }

  bool isValid() {
    if (_password.length >= 8 && _password.length <= 16) {
      if (_password.contains(RegExp(r'[A-Z]'))) {
        if (_password.contains(RegExp(r'[a-z]'))) {
          if (_password.contains(RegExp(r'[0-9]'))) {
            return true;
          }
        }
      }
    }
    return false;
  }

  @override
  String toString() {
    return 'Your Password is: ${_password}';
  }
}
