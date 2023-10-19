import 'package:collegex/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage("assets/images/orangetop.png")),
            const Center(
              child: Text(
                "CollegeX",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'jsMath',
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: 335,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  filled: true,
                  isDense: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Email",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 335,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  filled: true,
                  isDense: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Password",
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 65,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Homescreen(),
                        ));
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blue),
                )),
            // const Divider(
            //   color: Colors.white60,
            //   height: 10,
            //   indent: 12,
            //   endIndent: 12,
            // ),
            const Text(
              "or",
              style: TextStyle(color: Colors.white60),
            ),
            SizedBox(
              height: 65,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue[900],
                  ),
                  label: const Text(
                    "Facebook",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFFE43434),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  icon: Icon(
                    Icons.security_update_good,
                    color: Colors.blue[900],
                  ),
                  label: const Text(
                    "Google",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 65,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  child: const Text(
                    "X",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 45),
                  visualDensity: const VisualDensity(vertical: 3, horizontal: 3),
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.black54, width: 5),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 33),
                      borderRadius: BorderRadius.circular(8))),
              child: const Text(
                "Create Account",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
