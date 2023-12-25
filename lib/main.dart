import 'package:collegex/core/auth/auth_state.dart';
import 'package:collegex/firebase_options.dart';
import 'package:collegex/screen/home/home.dart';
import 'package:collegex/screen/loading_screen.dart';
import 'package:collegex/screen/login/login_screen.dart';
import 'package:collegex/state/auth/auth_provider.dart';
import 'package:collegex/utilities/ux_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

final firebaseInitializerProvider =
    FutureProvider<FirebaseApp>((ref) async {
  return await Firebase.initializeApp(
      options:
          DefaultFirebaseOptions.currentPlatform);
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(
      BuildContext context, WidgetRef ref) {
    final init =
        ref.watch(firebaseInitializerProvider);
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: init.when(data: (data) {
          return const MyHomePage(
              title: "CollageX");
        }, error: (error, stackstrace) {
          xUxUtils.show_Dialog(
              context, "error occured");
        }, loading: () {
          return const xLoadingScreen();
        }));
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage(
      {super.key, required String title});

  @override
  Widget build(
      BuildContext context, WidgetRef ref) {
    final authHelper = ref.watch(xAuthProvider);
    return Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //
        //   title: Text(widget.title),
        // ),
        body: authHelper.isbinary
            ? Homescreen()
            : LoginScreen());
  }
}
