import 'package:flutter/material.dart';

import '../widgets/myWidgets.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({super.key});

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("درخواست ها"),
            centerTitle: true,
            backgroundColor: myColor,
            foregroundColor: Colors.white,
          ),
          body: ListView.builder(
            itemCount: 10, // Replace with the actual number of notifications
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[50]),
                child: ListTile(
                  title: const Text(
                    'محمد شریف سعیدی',
                    style: TextStyle(color: Color.fromARGB(255, 2, 49, 87)),
                  ),
                  subtitle: const Text('هرات'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle accept button tap
                        },
                        child: const Text(
                          '  رد  ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle reject button tap
                        },
                        child: const Text(
                          'قبول',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Handle notification tap
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
