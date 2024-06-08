class LoginFormInput {

  late String email = "";
  late String password = "";


  LoginFormInput(this.email, this.password);

  Future<void> changeEmail(String ctx) async {
    this.email = ctx;
  }

  Future<void> changePassword(String ctx) async {
    this.password = ctx;
  }

}