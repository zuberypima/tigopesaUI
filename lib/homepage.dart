import 'package:flutter/material.dart';
import 'package:tigopesaui/utilities/constants.dart';
import 'package:tigopesaui/widgets/homecard.dart';

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
      backgroundColor: Color.fromARGB(255, 241, 239, 239),
      appBar: AppBar(backgroundColor: mainColor),
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
                      color: mainColor,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Angalia Salio",
                      style: TextStyle(color: mainColor, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 2),
                    children: [
                      HomeCard()
                          .homeCard("Tume Pesa", Icons.send_to_mobile_rounded),
                      HomeCard()
                          .homeCard("Kulipia Bili", Icons.payments_outlined),
                      HomeCard()
                          .homeCard("Benki", Icons.account_balance_outlined),
                      HomeCard().homeCard("Kutoa Pesa", Icons.wallet),
                      HomeCard()
                          .homeCard("Malipo ya Serikali", Icons.pages_outlined),
                      HomeCard().homeCard("Lipa Kwa Simu", Icons.paid_outlined),
                      HomeCard().homeCard(
                          "Duka La Tigo", Icons.shopping_cart_checkout_sharp),
                      HomeCard().homeCard("Tuma Nje ya Nchi", Icons.abc),
                      HomeCard().homeCard("Huduma za Kifedha", Icons.abc),
                    ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
