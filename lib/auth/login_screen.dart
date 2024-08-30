import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'email_and_password_validators.dart';
import 'email_password_sign_in_controller.dart';
import 'email_password_sign_in_form_type.dart';
import 'string_validators.dart';

/// Email & password sign in screen.
/// Wraps the [EmailPasswordSignInContents] widget below with a [Scaffold] and
/// [AppBar] with a title.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // * Keys for testing using find.byKey()
  static const emailKey = Key('email');
  static const passwordKey = Key('password');

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmailPasswordSignInContents(
        formType: EmailPasswordSignInFormType.signIn,
      ),
    );
  }
}

class EmailPasswordSignInContents extends ConsumerStatefulWidget {
  const EmailPasswordSignInContents({
    super.key,
    this.onSignedIn,
    required this.formType,
  });

  final VoidCallback? onSignedIn;
  final EmailPasswordSignInFormType formType;

  @override
  ConsumerState<EmailPasswordSignInContents> createState() =>
      _EmailPasswordSignInContentsState();
}

class _EmailPasswordSignInContentsState
    extends ConsumerState<EmailPasswordSignInContents>
    with EmailAndPasswordValidators {
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get email => _emailController.text;
  String get password => _passwordController.text;
  var _submitted = false;
  late var _formType = widget.formType;

  @override
  void dispose() {
    _node.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() => _submitted = true);
    // only submit the form if validation passes
    if (_formKey.currentState!.validate()) {
      final controller =
          ref.read(emailPasswordSignInControllerProvider.notifier);
      final success = await controller.submit(
        email: email,
        password: password,
        formType: _formType,
      );
      if (success) {
        widget.onSignedIn?.call();
      }
    }
  }

  void _emailEditingComplete() {
    if (canSubmitEmail(email)) {
      _node.nextFocus();
    }
  }

  void _passwordEditingComplete() {
    if (!canSubmitEmail(email)) {
      _node.previousFocus();
      return;
    }
    _submit();
  }

  void _updateFormType() {
    // * Toggle between register and sign in form
    setState(() => _formType = _formType.secondaryActionFormType);
    // * Clear the password field when doing so
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(emailPasswordSignInControllerProvider);
    return FocusScope(
      node: _node,
      child: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // email field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    key: LoginScreen.emailKey,
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      enabled: !state.isLoading,
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email) =>
                        !_submitted ? null : emailErrorText(email ?? ''),
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () => _emailEditingComplete(),
                    inputFormatters: [
                      ValidatorInputFormatter(
                        editingValidator: EmailEditingRegexValidator(),
                      ),
                    ],
                  ),
                ),

                // password field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    key: LoginScreen.passwordKey,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      enabled: !state.isLoading,
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (password) => !_submitted
                        ? null
                        : passwordErrorText(password ?? '', _formType),
                    obscureText: true,
                    autocorrect: false,
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () => _passwordEditingComplete(),
                  ),
                ),

                // submit button
                FilledButton(
                  onPressed: state.isLoading ? null : () => _submit(),
                  child: Text(_formType.primaryButtonText),
                ),

                // switch form type
                TextButton(
                  onPressed: state.isLoading ? null : _updateFormType,
                  child: Text(_formType.secondaryButtonText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
