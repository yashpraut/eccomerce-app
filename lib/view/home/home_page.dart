import 'package:ecommerceapp/utils/screen/screen_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: ScreenUtils.screenWidth(context)*0.8,
                  child: TextFormField()),
              Icon(Icons.account_circle)

            ],
          )
          ],
        ),
      ),
    );
  }
}
