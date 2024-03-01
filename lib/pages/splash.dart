import 'package:blood_bank_app/widgets/myWidgets.dart';
import 'package:blood_bank_app/pages/registration.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 182, 19, 8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Registration()));
              },
              child: const Icon(
                Icons.bloodtype,
                size: 110,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            myText("اهدای خون"),
            const SizedBox(height: 10),
            myText("اهدای زندگی"),
          ],
        ),
      ),
    );
  }
}
