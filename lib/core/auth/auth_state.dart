enum AuthState { authenticated, unauthenticated }

extension AuthStateExtension on AuthState {
  bool get isbinary =>
      this == AuthState.authenticated
          ? true
          : false;
}
