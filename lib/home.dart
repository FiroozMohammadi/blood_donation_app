import 'package:blood_bank_app/data/data.dart';
import 'package:blood_bank_app/pages/about.dart';
import 'package:blood_bank_app/pages/bloodQualification.dart';
import 'package:blood_bank_app/pages/blood_info.dart';
import 'package:blood_bank_app/pages/notification.dart';
import 'package:flutter/material.dart';
import 'widgets/myWidgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: myColor,
            foregroundColor: Colors.white,
            title: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyNotification()));
                },
                child: const Badge(
                  backgroundColor: Colors.redAccent,
                  label: Text("6"),
                  child: Icon(
                    Icons.notifications,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
          drawer: Drawer(
              width: 195,
              elevation: 5,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: const Text("فیروز احمد محمدی"),
                    accountEmail: const Text("۰۷۹۷۶۰۹۸۳۶"),
                    currentAccountPictureSize: const Size.square(60),
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: AssetImage('assets/firooz.jpg'),
                    ),
                    decoration: BoxDecoration(color: myColor),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person_2_outlined),
                    title: const Text('مشخصات'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.bloodtype_outlined),
                    title: const Text('فواید اهدای خون '),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BloodInfo()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.bloodtype_outlined),
                    title: const Text('شرایط اهدای خون'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Qualifiation()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.delete_outlined),
                    title: const Text('حذف حساب'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.info_outline_rounded),
                    title: const Text('درباره ما'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout_sharp),
                    title: const Text('خروج'),
                    onTap: () {},
                  ),
                ],
              )),
          backgroundColor: myColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.26,
                  width: double.infinity,
                  child: Column(
                    children: [
                      ComboBoxWidget(
                        dataList: cityList,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: SizedBox(
                          height: 60,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: bloodGroupList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 60,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    bloodGroupList[index],
                                    style: const TextStyle(
                                        color: Colors.red,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  height: MediaQuery.sizeOf(context).height,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: bloodGroupList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          leading: CircleAvatar(
                            maxRadius: 25,
                            backgroundColor:
                                const Color.fromARGB(255, 182, 19, 8),
                            child: Text(
                              bloodGroupList[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          title: const Text("محمد رحیم محمدی"),
                          subtitle: const Text("هرات"),
                          trailing: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CustomAlertDialog();
                                  },
                                );
                              },
                              child: const Icon(Icons.more_vert)));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
