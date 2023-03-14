import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Show Alert"),
        onPressed: () => {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    TextButton(onPressed: () => print("ok"), child: Text("Ok")),
                    TextButton(
                        onPressed: () =>
                            {Navigator.of(context).pop(), print("Cancel")},
                        child: Text("Cancel")),
                  ],
                  actionsPadding: EdgeInsets.all(20),
                  titlePadding: EdgeInsets.only(top: 10, left: 10),
                  contentPadding: EdgeInsets.all(20),
                  title: Text("Title"),
                  content: Text("Content content content"),
                  contentTextStyle: TextStyle(color: Colors.green),
                  titleTextStyle: TextStyle(color: Colors.red),
                  // backgroundColor: Colors.blue,
                );
              })
        },
      ),
    );
  }
}
