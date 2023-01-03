import 'package:flutter/material.dart';
import 'package:foodes_app/constants/image.dart';
import 'package:foodes_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> const OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const SizedBox(
              height: 70,
              width: 60,
              child: Image(
                image: AssetImage(tSplashImage),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Foodes App",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              )),
            )
          ],
        ),
      ),
    );
  }
}
