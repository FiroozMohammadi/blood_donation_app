import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/myWidgets.dart';

class Qualifiation extends StatefulWidget {
  const Qualifiation({super.key});

  @override
  State<Qualifiation> createState() => _QualifiationState();
}

class _QualifiationState extends State<Qualifiation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("شرایط اهدای خون"),
            centerTitle: true,
            backgroundColor: myColor,
            foregroundColor: Colors.white,
          ),
          body: ListView.builder(
            itemCount: qualification.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  qualification[index].title,
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
                subtitle: Text(qualification[index].details),
              );
            },
          ),
        ),
      ),
    );
  }
}
