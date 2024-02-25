import 'package:blood_bank_app/home.dart';
import 'package:blood_bank_app/myWidgets.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController name = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController phone = TextEditingController();
  List<String> BloodGroupList = [
    '+ A',
    '- A',
    '+ B',
    '- B',
    '+ AB',
    '- AB',
    '+ O',
    '- O'
  ];
  final List<String> cityList = ['هرات', 'کابل', 'مزار', 'لوگر'];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 182, 19, 8),
          body: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.12,
                width: double.infinity,
                child: Center(
                  child: myText("ثبت مشخصات"),
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.sizeOf(context).height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        titleText("نام"),
                        myTextField(TextInputType.text, name),
                        titleText("تخلص"),
                        myTextField(TextInputType.text, lastname),
                        titleText("سن"),
                        myTextField(TextInputType.number, age),
                        titleText("ولایت"),
                        ComboBoxWidget(
                          dataList: cityList,
                        ),
                        titleText("شماره تماس"),
                        myTextField(TextInputType.number, phone),
                        titleText("گروپ خون"),
                        ComboBoxWidget(dataList: BloodGroupList),
                        myButton("ثبت", 50, Colors.white,
                            const Color.fromARGB(255, 182, 19, 8), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        })
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
