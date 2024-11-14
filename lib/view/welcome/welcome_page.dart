import 'package:ecommerceapp/routes/routes_name.dart';
import 'package:ecommerceapp/utils/screen/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Positioned(
                top: -60,
                height: 500,
                width: MediaQuery.sizeOf(context).width,
                child: Image.network(
                  "https://i.pinimg.com/originals/49/80/d8/4980d8cf29d80756332cff67255a3f31.png",
                  height: 600,
                  fit: BoxFit.contain,
                )),
            Positioned(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              top: 320,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Welcome To",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                              children: [
                            TextSpan(
                                text: " Grocery",
                                style: TextStyle(color: Colors.green))
                          ])),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Fresh groceries delivered fast shop with ease!!",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        width: ScreenUtils.screenWidth(context),
                        height: 80,
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        Colors.orangeAccent.shade200),
                                    fixedSize:
                                        WidgetStateProperty.all(Size(200, 50))),
                                onPressed: () {
                                  Navigator.pushNamed(context, RoutesName.signupPage);
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, RoutesName.loginPage);
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                  fixedSize:
                                      WidgetStateProperty.all(Size(100, 50))),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
