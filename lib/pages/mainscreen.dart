import 'package:flutter/material.dart';
import 'package:hazajutok/pages/mainscreen/home.dart';
import 'package:hazajutok/pages/mainscreen/map.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child: Text("Welcome!")),
            ListTile(
              leading: Icon(Icons.add),
              title: Text(AppLocalizations.of(context)!.mainDrawerRegistration),
              onTap: () {Navigator.pushNamed(context, "/register");},
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text(AppLocalizations.of(context)!.mainDrawerLogin),
              onTap: () {Navigator.pushNamed(context, "/login");},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.language),
              title: Text(AppLocalizations.of(context)!.language),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(AppLocalizations.of(context)!.mainTitle),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _pageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _pageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.map_outlined),
            selectedIcon: Icon(Icons.map),
            label: 'Map',
          ),
          NavigationDestination(
            icon: Icon(Icons.flag_outlined),
            selectedIcon: Icon(Icons.flag),
            label: 'Support',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_outlined),
            ),
            selectedIcon: Icon(Icons.messenger),
            label: 'Reports',
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _pageIndex,
          children: <Widget>[
            Home(),
            WorldMap(),
            Placeholder(),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
