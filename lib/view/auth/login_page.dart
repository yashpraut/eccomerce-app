import 'package:ecommerceapp/routes/routes_name.dart';
import 'package:ecommerceapp/utils/screen/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    String email = "";
    String password = "";

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                Icon(
                  Icons.location_on,
                  size: 80,
                  color: Colors.orangeAccent.shade200,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Let's sign you in.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sign in with your data that you have entered during your registration.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter email properly";
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            email = newValue!;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Email"),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter some text";
                              }
                              if (value.length < 8) {
                                return "please enter password size more than 8";
                              }

                              return null;
                            },
                            onSaved: (newValue) {
                              password = newValue!;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Password"))),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "forgot password?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
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
                                          borderRadius:
                                              BorderRadius.circular(5)))),
                              onPressed: () {
                                var validate = formKey.currentState!.validate();
                                if (validate) {
                                  formKey.currentState!.save();

                                  Navigator.pushNamed(
                                      context, RoutesName.homePage);
                                } else {
                                  formKey.currentState!.reset();
                                }
                              },
                              child: Text(
                                "Sign in",
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
                              text: "Don't have an account? ",
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Colors.black),
                              children: [
                                TextSpan(
                                    text: "Sign up",
                                    style:
                                        TextStyle(color: Colors.orangeAccent))
                              ]),
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
