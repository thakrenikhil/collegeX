import 'package:collegex/core/auth/auth_service.dart';
import 'package:collegex/core/auth/auth_state.dart';
import 'package:collegex/state/auth/auth_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//use this in the app ui to manage state
final xAuthProvider = StateNotifierProvider<
    xAuthNotifier, AuthState>((ref) {
  return xAuthNotifier(
      ref.read(xAuthServiceProvider));
});

final xAuthServiceProvider =
    Provider((ref) => xAuthService());
