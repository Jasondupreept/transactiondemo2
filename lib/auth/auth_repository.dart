import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef _) => AuthRepository();

@riverpod
Stream<User?> authUser(AuthUserRef ref) async* {
  final authStream = ref.watch(authRepositoryProvider).authState;

  await for (final authState in authStream) {
    yield authState.session?.user;
  }
}

final supabase = Supabase.instance.client;

class AuthRepository {
  Stream<AuthState> get authState => supabase.auth.onAuthStateChange;

  Future<AuthResponse> logIn({
    required String email,
    required String password,
  }) async {
    return supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  Future<AuthResponse> signUp({
    required String email,
    required String password,
  }) async {
    return supabase.auth.signUp(
      email: email,
      password: password,
    );
  }

  Future<AuthResponse> verifyCode({
    required String email,
    required String code,
  }) async {
    return supabase.auth.verifyOTP(
      email: email,
      token: code,
      type: OtpType.signup,
    );
  }

  Future<void> signOut() {
    return supabase.auth.signOut();
  }
}
