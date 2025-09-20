import 'package:flutter/material.dart';
import 'package:instagram_clone/constant/Appcolors.dart';
import 'package:instagram_clone/screens/home_screen.dart';
import 'package:instagram_clone/screens/signin_screen.dart';

import 'buttomnav_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  double get width => MediaQuery.sizeOf(context).width;
  double get height => MediaQuery.sizeOf(context).height;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height / 4),

              Text("Instagram ",style: TextStyle(fontFamily: 'Billabong',fontSize: 50,fontWeight: FontWeight.bold),),
              SizedBox(height: 40.0),
              CircleAvatar(
                radius: 75.0,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
                ),
              ),

              SizedBox(height: 20.0),
              Text("oxt_maher ",style: TextStyle(fontFamily: 'RobotoMono',fontSize: 16,fontWeight: FontWeight.bold),),

              SizedBox(height: 10.0),
              SizedBox(
                width: width *0.9,
                child: FilledButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Appcolors.LoginButtonColor,
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),

                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(
                        builder: (context) => const ButtomnavScreen(),
                      ),
                    );
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (context) => const SigninScreen(),
                    ),
                  );
                },
                child: Text(
                  "Switch to account",
                  style: TextStyle(color: Appcolors.LoginButtonColor,fontWeight: FontWeight.bold),
                ),
              ),
Spacer(),
              Divider(
                height: 1,
                thickness: 1,
                color: Appcolors.LightGrey,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0,right: 8,left: 8,top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(color: Appcolors.LightGrey),),
                    SizedBox(width: 3),
                    InkWell(
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Appcolors.Black),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
