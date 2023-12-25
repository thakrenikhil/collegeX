import 'package:collegex/state/auth/auth_provider.dart';
import 'package:collegex/theme/colors.dart';
import 'package:collegex/utilities/appassets.dart';
import 'package:collegex/widgets/buttons.dart';
import 'package:collegex/widgets/shakeWidget.dart';
import 'package:collegex/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget>
      createState() => _LoginScreenState();
}

class _LoginScreenState
    extends ConsumerState<LoginScreen> {
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>();

  final _shakeKey = GlobalKey<ShakeWidgetState>();

  final TextEditingController _emailController =
      TextEditingController();

  final TextEditingController
      _passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authHelper =
        ref.watch(xAuthProvider.notifier);
    return Scaffold(
      backgroundColor: xColors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 120),
              Center(
                child: SvgPicture.asset(
                    AppAssets.KCollegeX),
              ),
              const SizedBox(height: 80),
              AuthField(
                controller: _emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 30),
              AuthField(
                controller: _passwordController,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomTextButton(
                  color: Colors.blue,
                  onPressed: () {},
                  text: 'Forget Password?',
                ),
              ),
              const SizedBox(height: 15),
              ShakeWidget(
                key: _shakeKey,
                shakeOffset: 10.0,
                shakeDuration: const Duration(
                    milliseconds: 500),
                child: PrimaryButton(
                  onTap: () {
                    if (_emailController
                            .text.isNotEmpty &&
                        _passwordController
                            .text.isNotEmpty) {
                    } else {
                      _shakeKey.currentState
                          ?.shake();
                    }
                  },
                  text: 'Login',
                  color: Colors.white,
                  height: 50,
                  borderRadius: 20,
                  width: 305,
                ),
              ),
              const SizedBox(height: 20),
              const DividerWithText(),
              const SizedBox(height: 20),
              CustomSocialButtonBlack(
                color: Colors.grey[900],
                onTap: () {
                  authHelper.googleLogin();
                },
                icon: AppAssets.kGoogle,
                text: 'Sign in with Google',
                margin: 0,
              ),
              const SizedBox(height: 20),
              CustomSocialButton(
                onTap: () {},
                icon: AppAssets.KApple,
                text: 'Sign in with Apple',
                margin: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
