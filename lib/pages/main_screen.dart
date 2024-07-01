import 'package:flutter/material.dart';
import 'package:hazajutok/pages/mainscreen/consumer_drawer.dart';
import 'package:hazajutok/pages/mainscreen/home.dart';
import 'package:hazajutok/pages/mainscreen/map.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hazajutok/pages/mainscreen/requests/presentation/requests_screen.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/presentation/rescue_me.dart';


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
      drawer: ConsumerDrawer(),
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
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: AppLocalizations.of(context)!.mainHomeTitle,
          ),
          NavigationDestination(
            icon: Icon(Icons.map_outlined),
            selectedIcon: Icon(Icons.map),
            label: AppLocalizations.of(context)!.mainMapTitle,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.red),
              borderRadius: const BorderRadius.all(Radius.circular(60))
            ),
            child: const NavigationDestination(
              icon: Icon(Icons.flag_outlined),
              selectedIcon: Icon(Icons.flag),
              label: 'SOS',
            ),
          ),
          NavigationDestination(
            icon: Badge(
              // label: Text('2'),
              child: Icon(Icons.messenger_outlined),
            ),
            selectedIcon: Icon(Icons.messenger),
            label: AppLocalizations.of(context)!.mainRequestsTitle,
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          sizing: StackFit.loose,
          index: _pageIndex,
          children: <Widget>[
            Home(),
            WorldMap(),
            RescueMe(),
            RequestsScreen(),
          ],
        ),
      ),
    );
  }
}
