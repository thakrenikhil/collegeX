// ignore_for_file: camel_case_types

import 'package:collegex/core/auth/auth_service.dart';
import 'package:collegex/core/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class xAuthNotifier
    extends StateNotifier<AuthState> {
  xAuthNotifier(this._authService)
      : super(AuthState.unauthenticated);
  final xAuthService _authService;

  AuthState get authState => state;

  Future<void> login(GlobalKey<FormState> key,
      String email, String password) async {
    _authService.emailAuth(key, email, password);
    state = AuthState.authenticated;
  }

  Future<void> googleLogin() async {
    _authService.googleAuth();
    state = AuthState.authenticated;
  }

  Future<void> logout() async {
    await _authService.logout();
    state = AuthState.unauthenticated;
  }
}
