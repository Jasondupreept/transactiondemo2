import 'email_password_sign_in_form_type.dart';
import 'string_validators.dart';

mixin EmailAndPasswordValidators {
  final StringValidator emailSubmitValidator = EmailSubmitRegexValidator();
  final StringValidator passwordRegisterSubmitValidator =
      MinLengthStringValidator(6);
  final StringValidator passwordSignInSubmitValidator =
      NonEmptyStringValidator();

  bool canSubmitEmail(String email) {
    return emailSubmitValidator.isValid(email);
  }

  bool canSubmitPassword(
      String password, EmailPasswordSignInFormType formType) {
    if (formType == EmailPasswordSignInFormType.register) {
      return passwordRegisterSubmitValidator.isValid(password);
    }
    return passwordSignInSubmitValidator.isValid(password);
  }

  String? emailErrorText(String email) {
    final bool showErrorText = !canSubmitEmail(email);
    final String errorText =
        email.isEmpty ? 'Email can\'t be empty' : 'Invalid email';
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(
      String password, EmailPasswordSignInFormType formType) {
    final bool showErrorText = !canSubmitPassword(password, formType);
    final String errorText =
        password.isEmpty ? 'Password can\'t be empty' : 'Password is too short';
    return showErrorText ? errorText : null;
  }
}
