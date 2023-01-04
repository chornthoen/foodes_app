import 'package:flutter/material.dart';
import 'package:foodes_app/screens/home/home_register.dart';
import 'package:google_fonts/google_fonts.dart';

import '../loging/login_screen.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Text(
                  "Register \nNew account",
                  style: GoogleFonts.montserrat(
                    textStyle:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                 TextField(
                  controller: fullNameController,
                  decoration: const InputDecoration(
                      hintText: "Enter name",
                      labelText: "FULL NAME",
                      suffixIcon: Icon(Icons.account_circle_outlined)),
                ),
                const SizedBox(
                  height: 15,
                ),
                 TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: "Enter email",
                      labelText: "EMAIL",
                      suffixIcon: Icon(Icons.email_outlined)),
                ),
                const SizedBox(
                  height: 15,
                ),
                 TextField(
                  controller: phoneController,
                  decoration:const InputDecoration(
                      hintText: "Enter phone number",
                      labelText: "PHONE",
                      suffixIcon: Icon(Icons.phone_iphone_outlined)),
                ),
                const SizedBox(
                  height: 15,
                ),
                 TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "PASSWORD",
                    suffixIcon: Icon(Icons.lock_outline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>
                           HomeRegister(
                            fullName: fullNameController.text,
                            email: emailController.text,
                            phone: phoneController.text,
                            password: passwordController.text,),),);
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Colors.orangeAccent,
                        elevation: 0,
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage("assets/images/fb.png"),
                      width: 25,
                      height: 20,
                    ),
                    label: const Text(
                      "Sign up with Facebook",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                    ),
                    TextButton(
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
