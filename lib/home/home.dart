import 'package:bake_project/pallet.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

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
                    Container(
                      height: 150,
                      child: const Center(
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
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextInput(
                                hint: 'Enter Your Email Id ',
                                icon: Icons.mail,
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next,
                              ),
                              PasswardInput(
                                hint: 'Enter Your Password ',
                                icon: Icons.lock,
                                inputAction: TextInputAction.done,
                              ),
                              Text(
                                "Forgot Password?",
                                style: Kbody,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 100),
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue),
                                    onPressed: () {},
                                    // ignore: prefer_const_constructors
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      child: Text(
                                        "LogIn",
                                        style: Kbodya,
                                      ),
                                    )),
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
