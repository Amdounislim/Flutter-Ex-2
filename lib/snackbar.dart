import 'package:flutter/material.dart';

class Sback extends StatefulWidget {
  const Sback({super.key});

  @override
  State<Sback> createState() => _SbackState();
}

class _SbackState extends State<Sback> {
  // GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldkey,
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  onVisible: () => print("show"),
                  action: SnackBarAction(
                    textColor: Colors.white,
                    label: "Close",
                    onPressed: () => print("Close"),
                  ),
                  behavior: SnackBarBehavior.floating,
                  content: Text("Password rest.check your email"),
                  duration: Duration(seconds: 10),
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                ));
              },
              child: Text("Rest Password"))),
    );
  }
}
