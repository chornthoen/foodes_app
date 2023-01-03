import 'package:flutter/material.dart';
import 'package:foodes_app/constants/image.dart';
import 'package:foodes_app/constants/text_string.dart';
import 'package:foodes_app/screens/loging/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartScreen extends StatefulWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                tGetStartTitle,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 350, child: Image.asset(tGetStartImage)),
            const SizedBox(
              height: 120,
            ),
            SizedBox(
              height: 46,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.black,
                  elevation: 0,
                ),
                child: const Text("Get Started"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
