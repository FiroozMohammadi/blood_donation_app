import 'package:flutter/material.dart';

Padding myTextField(TextInputType tInput, TextEditingController userControl) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(
      20,
      0,
      20,
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
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 7),
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

Padding myRichText(String pText, cText) {
  return Padding(
    padding: const EdgeInsets.all(1),
    child: RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(text: pText),
          TextSpan(
            text: cText,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    ),
  );
}

Padding titleText(String name) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 25, 5),
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
