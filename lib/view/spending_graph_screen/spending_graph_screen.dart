import 'package:flutter/material.dart';
import 'package:paybill/utils/const.dart';
import 'package:paybill/view/spending_graph_screen/components/line_chart.dart';

class SpendingGraphScreen extends StatefulWidget {
  const SpendingGraphScreen({super.key});

  @override
  State<SpendingGraphScreen> createState() => _SpendingGraphScreenState();
}

class _SpendingGraphScreenState extends State<SpendingGraphScreen> {
  @override
  Widget build(BuildContext context) {
    var _dropdownValue;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new)),
          title: const Text('How much I spend')),
      body: Container(
        color: const Color.fromARGB(255, 228, 228, 228),
        child: Container(
          margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(color: const Color.fromARGB(255, 212, 212, 212)),
              borderRadius: BorderRadius.circular(20)),
          child: ListView(
            children: [
              Row(
                children: [
                  const Text(
                    'How much I spend',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 130,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:
                            Colors.white, //background color of dropdown button
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ), //border of dropdown button
                        borderRadius: BorderRadius.circular(
                            50), //border raiuds of dropdown button
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButton<String>(
                          elevation: 0,
                          value: _dropdownValue,
                          hint: Text(
                            'Month',
                            style: TextStyle(color: primaryColor),
                          ),
                          items: <String>[
                            'January',
                            'February',
                            'March ',
                            'April ',
                            'May ',
                            'June ',
                            'July ',
                            'August ',
                            'September',
                            'October ',
                            'November',
                            'December',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (e) {
                            setState(() {
                              _dropdownValue = e;
                            });
                          },
                          isExpanded: true,
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Icon(
                              Icons.expand_more,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: LineChartWidget(),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'September bills',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const ListTile(
                leading: Icon(
                  Icons.verified_user,
                  size: 30,
                ),
                title: Text(
                  'Apsardze Koblenz',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  '12.50 €',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'b',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                title: const Text(
                  'Bite',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: const Text(
                  '18.90 €',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              const ListTile(
                leading: Icon(
                  Icons.account_balance,
                  color: Colors.blue,
                  size: 30,
                ),
                title: Text(
                  'Incredit Group',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  '21.59 €',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              const ListTile(
                leading: Icon(
                  Icons.euro_outlined,
                  color: Colors.amber,
                ),
                title: Text(
                  'SMS Credit',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  '150.00 €',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              const ListTile(
                leading: Icon(
                  Icons.wifi,
                  size: 30,
                  color: Color.fromARGB(255, 154, 37, 208),
                ),
                title: Text(
                  'Beltcom Internet',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  '21.59 €',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
