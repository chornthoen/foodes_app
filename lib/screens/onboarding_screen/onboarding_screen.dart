import 'package:flutter/material.dart';
import 'package:foodes_app/constants/image.dart';
import 'package:foodes_app/constants/text_string.dart';
import 'package:foodes_app/screens/get_start/get_start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView(
              children: const [
                createPage(
                  title: tOnBoardingTitle1,
                  image: tOnBoardingImage1,
                ),
                createPage(
                  title: tOnBoardingTitle2,
                  image: tOnBoardingImage2,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30, left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => const GetStartScreen()));
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class createPage extends StatelessWidget {
  final String title;
  final String image;

  const createPage({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 50, left: 50, bottom: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 350,
            child: Image.asset(image),
          ),
        ],
      ),
    );
  }
}
