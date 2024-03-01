import 'package:flutter/material.dart';

Color myColor = const Color.fromARGB(255, 182, 19, 8);

Padding myTextField(TextInputType tInput, TextEditingController userControl) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(
      15,
      0,
      15,
      7,
    ),
    child: TextField(
      keyboardType: tInput,
      controller: userControl,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 249, 253, 252),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade900),
          borderRadius: BorderRadius.circular(8.0),
        ),
        // hintText: tHint,
        // prefixIcon: Icon(tIcon),
      ),
    ),
  );
}

class ComboBoxWidget extends StatefulWidget {
  final List<String> dataList;

  ComboBoxWidget({required this.dataList});
  @override
  _ComboBoxWidgetState createState() => _ComboBoxWidgetState();
}

class _ComboBoxWidgetState extends State<ComboBoxWidget> {
  String? selectedItem;
  String? selctedItemi;

  FocusNode ex = FocusNode();
  // ignore: non_constant_identifier_names
  final TextEditingController city = TextEditingController();

  @override
  void initState() {
    super.initState();
    ex.addListener(() {
      setState(() {});
    });
    city.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 7),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 249, 253, 252),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.blue,
          ),
        ),
        child: DropdownButton<String>(
          onChanged: ((value) {
            setState(() {
              selctedItemi = value!;
            });
          }),
          value: selctedItemi,
          items: widget.dataList
              .map((e) => DropdownMenuItem(
                    // ignore: sort_child_properties_last
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text(
                              e,
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    value: e,
                  ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => widget.dataList
              .map((e) => Row(
                    children: [
                      Text(
                        e,
                        style: TextStyle(color: Colors.grey.shade700),
                      )
                    ],
                  ))
              .toList(),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }
}

Widget myContainer(String pText, cText) {
  return Column(
    children: [
      Text(
        pText,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      )
    ],
  );
}

Padding titleText(String name) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
    child: Align(
      alignment: Alignment.centerRight,
      child: Text(
        name,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.grey[800],
        ),
      ),
    ),
  );
}

Padding myButton(
    String bName, double height, Color fColor, bColor, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
    child: SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: bColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text(
            bName,
            style: TextStyle(
                fontSize: 20.0, color: fColor, fontWeight: FontWeight.w600),
          )),
    ),
  );
}

Text myText(String name) {
  return Text(
    name,
    style: const TextStyle(
        fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
  );
}

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: const EdgeInsets.fromLTRB(15, 8, 15, 12),
        contentTextStyle:
            const TextStyle(color: Color.fromARGB(255, 2, 49, 87)),
        title: const Center(
          child: Text("مشخصات خون دهنده"),
        ),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 2, 49, 87),
            fontSize: 18),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconWithText("فیروز احمد محمدی", Icons.person_2),
            IconWithText("هرات", Icons.location_city),
            IconWithText("+ AB", Icons.bloodtype),
            IconWithText("۲۳ cc", Icons.water_drop_sharp),
            IconWithText("۰۷۹۷۶۰۹۸۳۶", Icons.phone_android_sharp),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  child: const Text(
                    'درخواست',
                    style: TextStyle(color: Color.fromARGB(255, 2, 49, 87)),
                  ),
                  onPressed: () {
                    // Perform action when Button 2 is pressed
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  child: const Text(
                    'تماس',
                    style: TextStyle(color: Color.fromARGB(255, 2, 49, 87)),
                  ),
                  onPressed: () {
                    // Perform action when Button 3 is pressed
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  child: const Text(
                    'انصراف',
                    style: TextStyle(color: Color.fromARGB(255, 2, 49, 87)),
                  ),
                  onPressed: () {
                    // Add your logic here to open the dialog
                    // or perform any action you want.
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget IconWithText(String text, IconData icon) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Row(
      children: [
        Icon(
          icon,
          color: const Color.fromARGB(255, 2, 49, 87),
        ),
        const SizedBox(
          width: 8,
        ),
        // Add some spacing between the icon and text
        Text(text),
      ],
    ),
  );
}
