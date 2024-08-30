import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transactiondemo/main.dart';
import 'auth_repository.dart';
import 'login_screen.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authUserProvider).asData?.value;

    if (user != null) {
      return MyHomePage(
        title: 'Transaction Demo - ${user.id}',
      );
    } else {
      return const LoginScreen();
    }
  }
}
