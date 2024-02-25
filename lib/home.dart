import 'package:flutter/material.dart';

import 'myWidgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> groupList = [
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 182, 19, 8),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 220,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.26,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/userimage.png'),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            const Text(
                              "اهدای خون اهدای زندگی",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const Badge(
                              textColor: Colors.white,
                              backgroundColor: Colors.redAccent,
                              label: Text("6"),
                              child: Icon(
                                Icons.notifications,
                                size: 26,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      // myTextField("جستجو", Icons.search),
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
                            itemCount: groupList.length,
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
                                    groupList[index],
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
                    itemCount: groupList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          maxRadius: 25,
                          backgroundColor:
                              const Color.fromARGB(255, 182, 19, 8),
                          child: Text(
                            groupList[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        title: const Text("محمد رحیم محمدی"),
                        subtitle: const Text("هرات"),
                        trailing: const Icon(Icons.more_vert),
                      );
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
