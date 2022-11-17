import 'package:flutter_bloc/flutter_bloc.dart';
import 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.history:
        emit(NavigationState(NavbarItem.history, 1));
        break;

      case NavbarItem.adddocuments:
        emit(NavigationState(NavbarItem.adddocuments, 2));
        break;
      case NavbarItem.cards:
        emit(NavigationState(NavbarItem.cards, 3));
        break;
      case NavbarItem.profile:
        emit(NavigationState(NavbarItem.profile, 4));
        break;
      case NavbarItem.graphdetails:
        emit(NavigationState(NavbarItem.graphdetails, 5));
        break;
    }
  }
}
