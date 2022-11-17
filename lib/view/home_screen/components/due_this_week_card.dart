import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:paybill/view/home_screen/components/custom_card.dart';

class DueThisWeekCard extends StatefulWidget {
  const DueThisWeekCard(
      {super.key,
      required this.title,
      required this.height,
      required this.width});
  final String title;
  final String height;

  final String width;
  @override
  State<DueThisWeekCard> createState() => _DueThisWeekCardState();
}

class _DueThisWeekCardState extends State<DueThisWeekCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.parse(widget.height),
      child: Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color.fromARGB(255, 218, 218, 218)),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (e) {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          builder: (context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 50, horizontal: 20),
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: const Icon(Icons.close),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 150,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      height: 500,
                                      width: 1500,
                                      child: ListView(
                                        children: const [
                                          CustomCard(
                                              height: 500,
                                              width: 200,
                                              title: 'Incredit Group'),
                                        ],
                                      ),
                                    )
                                  ]),
                            );
                          },
                          context: context,
                        );
                      },
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      label: 'Pay Now',
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 500,
                  child: ListTile(
                    leading: const Icon(
                      Icons.verified_user,
                      size: 30,
                    ),
                    title: const Text(
                      'Apsardze Koblenz',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Dec 26 Sep - 8 days to pay',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          '12.50 €',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
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
              ),
              const Divider(
                color: Colors.grey,
              ),
              Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (context) {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          builder: (context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 50, horizontal: 20),
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: const Icon(Icons.close),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 150,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      height: 500,
                                      width: 1500,
                                      child: ListView(
                                        children: const [
                                          CustomCard(
                                              height: 500,
                                              width: 200,
                                              title: 'Incredit Group'),
                                        ],
                                      ),
                                    )
                                  ]),
                            );
                          },
                          context: context,
                        );
                      },
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      label: 'Pay Now',
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 500,
                  child: ListTile(
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Dec 01 Oct - 9 days to pay ',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          '18.90 €',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
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
              ),
              const Divider(
                color: Colors.grey,
              ),
              Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (e) {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          builder: (context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 50, horizontal: 20),
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: const Icon(Icons.close),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 150,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      height: 500,
                                      width: 1500,
                                      child: ListView(
                                        children: const [
                                          CustomCard(
                                              height: 500,
                                              width: 200,
                                              title: 'Incredit Group'),
                                        ],
                                      ),
                                    )
                                  ]),
                            );
                          },
                          context: context,
                        );
                      },
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      label: 'Pay Now',
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 500,
                  child: ListTile(
                    leading: const Icon(
                      Icons.credit_card,
                      size: 30,
                    ),
                    title: const Text(
                      'Credit Group',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Dec 04 Oct - 12 days to pay ',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          '251.90 €',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
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
              ),
              const Divider(
                color: Colors.grey,
              ),
              Slidable(
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (e) {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          builder: (context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 50, horizontal: 20),
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: const Icon(Icons.close),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 150,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      height: 500,
                                      width: 1500,
                                      child: ListView(
                                        children: const [
                                          CustomCard(
                                              height: 500,
                                              width: 200,
                                              title: 'Incredit Group'),
                                        ],
                                      ),
                                    )
                                  ]),
                            );
                          },
                          context: context,
                        );
                      },
                      backgroundColor: const Color.fromARGB(255, 101, 207, 104),
                      foregroundColor: Colors.white,
                      label: 'Pay Now',
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 500,
                  child: ListTile(
                    leading: const Icon(
                      Icons.wifi,
                      size: 30,
                      color: Color.fromARGB(255, 154, 37, 208),
                    ),
                    title: const Text(
                      'Beltcom Internet',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Dec 16 Oct - 21 days to pay ',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          '21.59 €',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
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
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
