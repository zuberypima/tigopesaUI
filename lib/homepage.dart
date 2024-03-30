import 'package:flutter/material.dart';

class HeomePage extends StatefulWidget {
  const HeomePage({super.key});

  @override
  State<HeomePage> createState() => _HeomePageState();
}

class _HeomePageState extends State<HeomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(31, 59, 144, 100)),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Card(
              color: Colors.amber,
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      color: Color.fromRGBO(31, 59, 144, 100),
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Angalia Salio",
                      style: TextStyle(
                          color: Color.fromRGBO(31, 59, 144, 100),
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: [
                    Card(
                      child: Center(
                        child: Text("data"),
                      ),
                    ),
                     Card(
                      child: Center(
                        child: Text("data"),
                      ),
                    ),
                     Card(
                      child: Center(
                        child: Text("data"),
                      ),
                    ),
                     Card(
                      child: Center(
                        child: Text("data"),
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    ));
  }
}
