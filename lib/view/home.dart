import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paybill/view/spending_graph_screen/spending_graph_screen.dart';
import '../cubit/navigation_cubit.dart';
import '../cubit/navigation_state.dart';
import 'cards_screen/cards_screen.dart';
import 'create_document_screen/create_document_screen.dart';
import 'history_screen/history_screen.dart';
import 'home_screen/home_screen.dart';
import 'profile_screen/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  List<Widget> currentWidget = [
    const HomeScreen(),
    const HistoryScreen(),
    const AddDocumentScreen(),
    const CardScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            if (state.navbarItem == NavbarItem.home) {
              return const HomeScreen();
            } else if (state.navbarItem == NavbarItem.history) {
              return const HistoryScreen();
            } else if (state.navbarItem == NavbarItem.adddocuments) {
              return const AddDocumentScreen();
            } else if (state.navbarItem == NavbarItem.cards) {
              return const CardScreen();
            } else if (state.navbarItem == NavbarItem.profile) {
              return const ProfileScreen();
            } else if (state.navbarItem == NavbarItem.graphdetails) {
              return const SpendingGraphScreen();
            }
            return Container();
          },
        ),
        bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: BottomNavigationBar(
                elevation: 5,
                currentIndex: state.index,
                unselectedFontSize: 14,
                selectedItemColor: const Color.fromARGB(255, 36, 98, 212),
                selectedLabelStyle: const TextStyle(
                  color: Color.fromARGB(255, 36, 98, 212),
                ),
                unselectedLabelStyle:
                    const TextStyle(color: Colors.grey, fontSize: 14),
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  if (index == 0) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.home);
                  } else if (index == 1) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.history);
                  } else if (index == 2) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.adddocuments);
                  } else if (index == 3) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.cards);
                  } else if (index == 4) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.profile);
                  }else if (index == 5) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.profile);
                  }
                },
                items: const [
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.format_list_bulleted,
                      size: 28,
                      color: Color.fromARGB(255, 36, 98, 212),
                    ),
                    icon: Icon(
                      Icons.home_outlined,
                      size: 28,
                      color: Colors.grey,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.history,
                      size: 28,
                      color: Color.fromARGB(255, 36, 98, 212),
                    ),
                    icon: Icon(
                      Icons.history_outlined,
                      size: 28,
                      color: Colors.grey,
                    ),
                    label: 'History',
                  ),
                  BottomNavigationBarItem(
                    icon: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 36, 98, 212),
                      radius: 30,
                      child: Icon(
                        Icons.note_add,
                        // Icons.sim_card_download,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.credit_card,
                      size: 28,
                      color: Color.fromARGB(255, 36, 98, 212),
                    ),
                    icon: Icon(
                      Icons.credit_card_outlined,
                      size: 28,
                      color: Colors.grey,
                    ),
                    label: 'Cards',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.person,
                      size: 28,
                      color: Color.fromARGB(255, 36, 98, 212),
                    ),
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 28,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
