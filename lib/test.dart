import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: DropdownButton(

          onTap: (){},
          icon: Icon(Icons.abc), 
          iconEnabledColor: Colors.blue,
          iconSize: 40,
          dropdownColor: Colors.red,
          underline: Divider(color: Colors.green, thickness: 2),
          isExpanded: true,
          hint: Text("choose country"),
          items: ["USA", "TUN", "IAT", "FRA"]
              .map((e) => DropdownMenuItem(
                    child: Text("$e"),
                    value: e,
                  ))
              .toList(),
          onChanged: (val) => {
            setState(() {
              selectedCountry = val;
            })
          },
          value: selectedCountry,
        ),
      ),
    );
  }
}
