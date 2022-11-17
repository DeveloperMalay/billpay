import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.height,
      required this.width,
      required this.title});
  final double height;
  final double width;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            ListTile(
              leading: const Icon(
                Icons.account_balance,
                color: Colors.blue,
              ),
              title: const Text(
                'Incredit Group',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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
              leading: Text(
                'Invoice issued',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                '24.08.2018',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const ListTile(
              leading: Text(
                'Payment date',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                '31.09.2018',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const ListTile(
              leading: Text(
                'Beneficiary',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: SizedBox(
                  width: 160,
                  child: Text(
                    'Swedbark AS, kods HABA L22 L21HABA000140832543',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const ListTile(
              leading: Text(
                'Invoice issued',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                'Invoice nr. 401241245667',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const ListTile(
              leading: Text(
                'Total amount',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                '25190 €',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    'Add to Pay-List',
                    style: TextStyle(
                      color: Color.fromARGB(255, 49, 67, 183),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 49, 67, 183),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    'Pay now',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
