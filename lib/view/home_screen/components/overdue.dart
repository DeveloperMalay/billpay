import 'package:flutter/material.dart';

class OverdueCard extends StatelessWidget {
  const OverdueCard(
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
          child: Column(
            children: [
              ListTile(
                title: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 500,
                child: ListTile(
                  leading: const Icon(
                    Icons.list,
                    size: 30,
                  ),
                  title: const Text(
                    'Lalvain Mobile Telephone',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Dec 22 Sep',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                      Text(
                        '-2 days to pay',
                        style: TextStyle(color: Colors.red, fontSize: 10),
                      )
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '37.70 €',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      Radio(
                          toggleable: true,
                          value: "radio value",
                          groupValue: "group value",
                          onChanged: (value) {
                            print(value); //selected value
                          }),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              SizedBox(
                width: 500,
                child: ListTile(
                  leading: const Text(
                    '€',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 226, 206, 28),
                        fontWeight: FontWeight.bold),
                  ),
                  title: const Text(
                    'SMS Credit',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Dec 21 Sep',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                      Text(
                        '-3 days to pay',
                        style: TextStyle(color: Colors.red, fontSize: 10),
                      )
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '99.00 €',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      Radio(
                          toggleable: true,
                          value: "radio value",
                          groupValue: "group value",
                          onChanged: (value) {
                            print(value); //selected value
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
