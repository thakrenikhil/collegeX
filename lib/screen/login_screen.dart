import 'package:collegex/screen/home/home.dart';
import 'package:collegex/state/auth/auth_provider.dart';
import 'package:collegex/styles/icons.dart';
import 'package:collegex/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:collegex/core/auth/auth_state.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget>
      createState() => _LoginScreenState();
}

class _LoginScreenState
    extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final loginHelper =
        ref.watch(xAuthProvider.notifier);

    return SafeArea(
      child: SingleChildScrollView(
          child: loginHelper.authState.isbinary
              ? Homescreen() //TODO:properly navigate to homepage
              : Column(
                  children: [
                    const Image(
                        image: AssetImage(
                            "assets/images/orangetop.png")),
                    Center(
                        child: SvgPicture.asset(
                            mainlogo)),
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      height: 50,
                      width: 335,
                      child: xTextField(
                        hintText: "email",
                        isPassword: false,
                        textInputType:
                            TextInputType
                                .emailAddress,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                        height: 50,
                        width: 335,
                        child: xTextField(
                          hintText: "password",
                          isPassword: true,
                          textInputType:
                              TextInputType.text,
                        )),

                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 65,
                      width: 350,
                      child: Padding(
                        padding:
                            const EdgeInsets.all(
                                8.0),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          const Homescreen(),
                                ));
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  Colors.black,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius
                                      .all(Radius
                                          .circular(
                                              8)))),
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                color:
                                    Colors.white,
                                fontWeight:
                                    FontWeight
                                        .bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.blue),
                        )),
                    // const Divider(
                    //   color: Colors.white60,
                    //   height: 10,
                    //   indent: 12,
                    //   endIndent: 12,
                    // ),
                    const Text(
                      "or",
                      style: TextStyle(
                          color: Colors.white60),
                    ),
                    SizedBox(
                      height: 65,
                      width: 350,
                      child: Padding(
                        padding:
                            const EdgeInsets.all(
                                8.0),
                        child:
                            OutlinedButton.icon(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  Colors
                                      .blueAccent,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(
                                              8)))),
                          icon: Icon(
                            Icons.facebook,
                            color:
                                Colors.blue[900],
                          ),
                          label: const Text(
                            "Facebook",
                            style: TextStyle(
                                color:
                                    Colors.white,
                                fontSize: 16,
                                fontWeight:
                                    FontWeight
                                        .bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 350,
                      child: Padding(
                        padding:
                            const EdgeInsets.all(
                                8.0),
                        child:
                            OutlinedButton.icon(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  const Color(
                                      0xFFE43434),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius
                                      .all(Radius
                                          .circular(
                                              8)))),
                          icon: Icon(
                            Icons
                                .security_update_good,
                            color:
                                Colors.blue[900],
                          ),
                          label: const Text(
                            "Google",
                            style: TextStyle(
                                color:
                                    Colors.white,
                                fontSize: 16,
                                fontWeight:
                                    FontWeight
                                        .bold),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 65,
                      width: 350,
                      child: Padding(
                        padding:
                            const EdgeInsets.all(
                                8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  Colors.black,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius
                                      .all(Radius
                                          .circular(
                                              8)))),
                          child: const Text(
                            "X",
                            style: TextStyle(
                                color:
                                    Colors.white,
                                fontSize: 16,
                                fontWeight:
                                    FontWeight
                                        .bold),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize:
                              const Size(330, 45),
                          visualDensity:
                              const VisualDensity(
                                  vertical: 3,
                                  horizontal: 3),
                          backgroundColor:
                              Colors.white,
                          side: const BorderSide(
                              color:
                                  Colors.black54,
                              width: 5),
                          shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(
                                      width: 33),
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          8))),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.black),
                      ),
                    ),
                  ],
                )),
    );
  }
}
