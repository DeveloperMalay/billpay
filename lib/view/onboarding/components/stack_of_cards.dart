import 'package:flutter/material.dart';
import 'package:paybill/view/home_screen/components/custom_card.dart';

class StackOfcardsScreen extends StatefulWidget {
  const StackOfcardsScreen({super.key});

  @override
  State<StackOfcardsScreen> createState() => _StackOfcardsScreenState();
}

class _StackOfcardsScreenState extends State<StackOfcardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 30,
          child: Card(
            shape: RoundedRectangleBorder(
                side:
                    const BorderSide(color: Color.fromARGB(255, 218, 218, 218)),
                borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
                height: 300,
                width: 200,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.account_balance,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        'Incredit Group',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      trailing: Radio(
                          toggleable: true,
                          value: "radio value",
                          groupValue: "group value",
                          onChanged: (value) {
                            print(value); //selected value
                          }),
                    ),
                  ],
                )),
          ),
        ),
        Positioned(
          top: 20,
          child: Card(
            shape: RoundedRectangleBorder(
                side:
                    const BorderSide(color: Color.fromARGB(255, 218, 218, 218)),
                borderRadius: BorderRadius.circular(10)),
            child: const SizedBox(height: 300, width: 220, child: Text("card")),
          ),
        ),
        Positioned(
          top: 10,
          child: Card(
            shape: RoundedRectangleBorder(
                side:
                    const BorderSide(color: Color.fromARGB(255, 218, 218, 218)),
                borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
                height: 300,
                width: 240,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.account_balance,
                        color: Colors.blue,
                        size: 20,
                      ),
                      title: const Text(
                        'Incredit Group',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      trailing: Radio(
                          toggleable: true,
                          value: "radio value",
                          groupValue: "group value",
                          onChanged: (value) {
                            print(value); //selected value
                          }),
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
                      visualDensity: VisualDensity(vertical: -2),
                      leading: Text(
                        'Invoice issued',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        '24.08.2018',
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Colors.grey,
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
                      visualDensity: VisualDensity(vertical: -2),
                      leading: Text(
                        'Payment date',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        '31.09.2018',
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Colors.grey,
                    ),
                    ListTile(
                      dense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
                      visualDensity: VisualDensity(vertical: -2),
                      leading: Text(
                        'Beneficiary',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: Container(
                        padding: EdgeInsets.only(left: 53),
                        width: 160,
                        child: Text(
                          'Swedbark AS, kods HABA L22 L21HABA000140832543',
                          style: TextStyle(fontSize: 8, color: Colors.grey),
                        ),
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Colors.grey,
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
                      visualDensity: VisualDensity(vertical: -2),
                      leading: Text(
                        'Invoice issued',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'Invoice nr. 401241245667',
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Colors.grey,
                    ),
                    const ListTile(
                      dense: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
                      visualDensity: VisualDensity(vertical: -2),
                      leading: Text(
                        'Total amount',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        '25190 €',
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            'Add to Pay-List',
                            style: TextStyle(
                                color: Color.fromARGB(255, 49, 67, 183),
                                fontSize: 12),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 49, 67, 183),
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            'Pay now',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
