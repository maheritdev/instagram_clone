import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/buttomnav_screen.dart';
import 'package:instagram_clone/screens/home_screen.dart';

import '../constant/Appcolors.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
      double get width => MediaQuery.sizeOf(context).width;
    double get height => MediaQuery.sizeOf(context).height;
    @override
    Widget build(BuildContext context) {

      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height *0.1),

                Text("Instagram ",style: TextStyle(fontFamily: 'Billabong',fontSize: 50,fontWeight: FontWeight.bold),),
                SizedBox(height: 40.0),
                SizedBox(
                  height: 45,
                  width: width *0.9,
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: AutofillHints.username,hintText: AutofillHints.username,filled: true,fillColor: Appcolors.TextFeildBG),
                  ),
                ),
                SizedBox(height: 16.0),

                SizedBox(
                  width: width *0.9,
                  height: 45,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: AutofillHints.password, hintText: AutofillHints.password,filled: true,fillColor: Appcolors.TextFeildBG),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Forget Password",style: TextStyle(color: Appcolors.LoginButtonColor,fontWeight: FontWeight.w400,fontSize: 12),)),
                  ],
                ),

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
                    child: Text("Log in", style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 20.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                        child: Image.asset("assets/images/facebook_icon.png",color: Colors.white,),
                    color: Appcolors.LoginButtonColor,),
                      // child: Padding(
                      //   padding: const EdgeInsets.only(left: 8.0,top: 2,right: 4),
                      //   child: Text("f",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
                      // ),
                    TextButton(onPressed: (){}, child: Text("Log in with Facebook",style: TextStyle(color: Appcolors.LoginButtonColor),)),
                  ],
                ),
                SizedBox(height: 20.0),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Appcolors.LightGrey
                            ),
                            height: 1,
                            width: width *0.35,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("OR"),
                          ),

                          Container(
                            decoration: BoxDecoration(
                                color: Appcolors.LightGrey
                            ),
                            height: 1,
                            width: width *0.35,
                          ),
                        ],
                      ),
            ],
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
                          style: TextStyle(color: Appcolors.LoginButtonColor),
                        ),
                      ),
                    ],
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
                  child: Text("Instagram or Facebook",style: TextStyle(color: Appcolors.LightGrey,fontSize: 12),),
                ),

              ],
            ),
          ),
        ),
      );
    }
}
