import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paybill/cubit/navigation_cubit.dart';
import 'package:paybill/view/home_screen/components/custom_card.dart';
import 'package:paybill/view/home_screen/components/due_this_week_card.dart';
import 'package:paybill/view/home_screen/components/overdue.dart';
import 'package:paybill/view/home_screen/subscreen/later_month.dart';
import 'package:paybill/view/spending_graph_screen/spending_graph_screen.dart';
import '../../cubit/navigation_state.dart';
import '../../utils/const.dart';
import 'subscreen/upcoming_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0, right: 8, top: 8, bottom: 8),
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8N3x8fGVufDB8fHx8&w=1000&q=80'),
            // child: Icon(
            //   Icons.person,
            //   color: Color.fromARGB(255, 58, 57, 57),
            //   size: 30,
            // ),
          ),
        ),
        title: const Text('Ready to pay bills?'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 470,
              ),
              Container(
                height: 270 - MediaQuery.of(context).viewPadding.top,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
              ),
              const Center(
                  child: Text(
                'You have 12 unpaid bills this month',
                style: TextStyle(color: Colors.grey),
              )),
              Positioned(
                top: 30,
                left: 120,
                child: BlocBuilder<NavigationCubit, NavigationState>(
                  builder: (context, state) {
                    return Center(
                      child: InkWell(
                        onTap: () {
                          // BlocProvider.of<NavigationCubit>(context)
                          //     .getNavBarItem(NavbarItem.graphdetails);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SpendingGraphScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 77, 74, 243),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Pay all bills at once',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 60,
                right: -16,
                child: DefaultTabController(
                  length: 2,
                  child: SizedBox(
                    height: 100,
                    width: 424,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                    color: primaryColor.withOpacity(0.1),
                                  ),
                                ],
                                color: const Color.fromARGB(255, 120, 142, 253),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: TabBar(
                                labelColor: primaryColor,
                                unselectedLabelColor: Colors.white,
                                // const Color.fromARGB(255, 93, 90, 241),
                                indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                tabs: [
                                  Tab(
                                    child: SizedBox(
                                      width: 121,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Icon(
                                            Icons.calendar_month,
                                            // color: primaryColor,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Upcoming (12)',
                                              style: TextStyle(
                                                // color: primaryColor,
                                                fontSize: 13,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: SizedBox(
                                      width: 150,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Icon(
                                            Icons.query_builder,
                                            // color: primaryColor,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Later this month (5)',
                                            style: TextStyle(
                                                // color: primaryColor,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Expanded(
                            child: TabBarView(
                              children: [
                                UpcomingScreen(),
                                LaterthisMonthScreen()
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              const Positioned(
                top: 170,
                left: 20,
                child: SizedBox(
                  width: 350,
                  child: OverdueCard(title: 'OverDue', height: 270, width: 300),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: DueThisWeekCard(
                title: 'Due This week',
                height: 430.toString(),
                width: 300.toString()),
          )
        ],
      ),
    );
  }
}
