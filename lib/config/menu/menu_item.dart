import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String route;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.route,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subTitle: 'Flutter buttons',
    route: '/buttons',
    icon: Icons.radio_button_checked,
  ),
  MenuItem(
    title: 'Cards',
    subTitle: 'Some Flutter cards',
    route: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'A few Flutter progress indicators',
    route: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y diálogos',
    subTitle: 'Screen indicators',
    route: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subTitle: 'Un contenedor animado',
    route: '/animated',
    icon: Icons.animation,
  ),
  MenuItem(
    title: 'UI Controls + Titles',
    subTitle: 'Algo bonito',
    route: '/ui-controls',
    icon: Icons.cake_rounded,
  ),
];
