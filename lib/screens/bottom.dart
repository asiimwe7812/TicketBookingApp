import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedItemIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];
  void ontapped(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YooTicket'),
      ),
      body: Center(
        child: _widgetOptions[_selectedItemIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 15,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedItemIndex,
          onTap: ontapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Account"),
          ]),
    );
  }
}
