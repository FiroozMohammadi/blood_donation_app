import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/myWidgets.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("درباره ما"),
            centerTitle: true,
            backgroundColor: myColor,
            foregroundColor: Colors.white,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/firooz.jpg'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Firooz Ahmad Muhammadi',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Software Developer',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.email,
                        color: myColor,
                        size: 26,
                      ),
                      onPressed: () {
                        // Action to send an email
                      },
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.green,
                        size: 26,
                      ),
                      onPressed: () {
                        // Action to call a phone number
                      },
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const Icon(
                        Icons.telegram_outlined,
                        color: Colors.blue,
                        size: 26,
                      ),
                      onPressed: () {
                        // Action to open LinkedIn profile
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
