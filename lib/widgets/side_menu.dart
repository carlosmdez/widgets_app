import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_item.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (int index) {
        setState(() {
          navDrawerIndex = index;
        });
        final menuRoute = appMenuItems[index].route;
        context.go(menuRoute);
        widget.scaffoldKey.currentState?.openEndDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16, paddingTop > 30 ? 0 : 16, 0, 8),
          child: const Text('Widgets App'),
        ),
        ...appMenuItems.sublist(0, 3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            // vertical: 8,
          ),
          child: Text('More Options'),
        ),
        ...appMenuItems.sublist(3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
      ],
    );
  }
}
