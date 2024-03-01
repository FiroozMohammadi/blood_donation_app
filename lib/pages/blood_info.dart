import 'package:blood_bank_app/widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import '../data/data.dart';

class BloodInfo extends StatelessWidget {
  const BloodInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("فواید اهدای خون"),
            centerTitle: true,
            backgroundColor: myColor,
            foregroundColor: Colors.white,
          ),
          body: ListView.builder(
            itemCount: BenefitBlood.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  BenefitBlood[index].title,
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
                subtitle: Text(BenefitBlood[index].details),
              );
            },
          ),
        ),
      ),
    );
  }
}
