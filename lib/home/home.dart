import 'package:bake_project/pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import '../widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key, Key? keyy});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BgImageOnBoard(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 150,
                      child: Center(
                        child: Text(
                          "_Bake",
                          style: KHeading,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const TextInput(
                                hint: 'Enter Your Email Id ',
                                icon: Icons.mail,
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next,
                              ),
                              const PasswardInput(
                                hint: 'Enter Your Password ',
                                icon: Icons.lock,
                                inputAction: TextInputAction.done,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password?",
                                  style: Kbodya,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 50),
                              const Loginbtn(),
                              SignInButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                Buttons.Google,
                                text: "Sign up with Google",
                                onPressed: () {},
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
