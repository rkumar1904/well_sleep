import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:well_sleep/pages/common_widget.dart';
import 'package:well_sleep/pages/constant.dart';

import 'home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(
          top: 100,
        ),
        decoration: const BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
            image: AssetImage('images/intro-bg.png'),
          ),
        ),
        child: CustomScrollView(
          slivers: [
            sliverList(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage('images/moon.png'),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to sleep',
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1.1,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage('images/hero-img.png'),
                  alignment: Alignment.center,
                ),
              ],
            )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: TextButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const HomePage(),
          //   ),
          // ); //Home page need to create.
          // Get rid of this code

          // Get.to(() => const HomePage());
          // to remove the back button in home page screen.
          Get.offAll(() => const HomePage());
        },
        style: TextButton.styleFrom(
          backgroundColor: secondryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          minimumSize: Size(
            MediaQuery.of(context).size.width * 0.9,
            50,
          ),
        ),
        child: const Text(
          'Get Started',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
