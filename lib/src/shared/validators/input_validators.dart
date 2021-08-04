class InputValidators {
  String? emailValidator(String? email) {
    if (email != null && email.isEmpty) {
      return "Insira um e-mail válido!";
    }
    return null;
  }

  String? passwordValidator(String? password) {
    if (password != null && password.isEmpty) {
      return "Insira uma senha válida!";
    }
    return null;
  }
}
