import 'package:ecommerceapp/utils/screen/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_circle_left,
                          size: 40,
                        ))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                RichText(
                  text: TextSpan(
                    text: "Create your account and",
                    children: [
                      TextSpan(
                        text: " join us.",style: TextStyle(
                        color: Colors.green
                      )
                      )
                    ],
                    style: GoogleFonts.poppins(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Full Name"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Email"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Password"))),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Confirm Password"))),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: ScreenUtils.screenWidth(context) * 0.8,
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  Colors.orangeAccent.shade200),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)))),
                          onPressed: () {},
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Already have account? ",
                          style: GoogleFonts.poppins(
                              fontSize: 15, color: Colors.black),
                          children: [
                            TextSpan(
                                text: "Sign in",
                                style: TextStyle(color: Colors.orangeAccent))
                          ]),
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      height: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: ScreenUtils.screenWidth(context),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey.shade600)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/google.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign in with Google",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
