import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls Screen')),
      body: _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum FoodType { pizza, pasta, sushi, ramen, curry, burger }

class _UIControlsViewState extends State<_UIControlsView> {
  bool developerMode = false;
  FoodType? selectedFood = FoodType.pizza;
  bool wantPizza = false;
  bool wantPasta = false;

  void onToggleDeveloperMode(bool value) {
    setState(() {
      developerMode = value;
    });
  }

  void onChangeFood(FoodType? value) {
    setState(() {
      selectedFood = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Enable developer mode'),
          value: developerMode,
          onChanged: (value) => onToggleDeveloperMode(value),
        ),
        ExpansionTile(
            title: const Text('Food Type'),
            subtitle: Text('$selectedFood'),
            children: [
              RadioListTile<FoodType>(
                title: const Text('Pizza'),
                subtitle: const Text('Italian food'),
                value: FoodType.pizza,
                groupValue: selectedFood,
                onChanged: onChangeFood,
              ),
              RadioListTile<FoodType>(
                title: const Text('Ramen'),
                subtitle: const Text('Japanese food'),
                value: FoodType.ramen,
                groupValue: selectedFood,
                onChanged: onChangeFood,
              ),
            ]),
        RadioListTile<FoodType>(
          title: const Text('Pizza'),
          subtitle: const Text('Italian food'),
          value: FoodType.pizza,
          groupValue: selectedFood,
          onChanged: onChangeFood,
        ),
        RadioListTile<FoodType>(
          title: const Text('Ramen'),
          subtitle: const Text('Japanese food'),
          value: FoodType.ramen,
          groupValue: selectedFood,
          onChanged: onChangeFood,
        ),
        CheckboxListTile(
          title: const Text('Pizza'),
          subtitle: const Text('Italian food'),
          value: wantPizza,
          onChanged: (value) => setState(() {
            wantPizza = value!;
          }),
        ),
        CheckboxListTile(
          title: const Text('Pasta'),
          subtitle: const Text('Italian food'),
          value: wantPasta,
          onChanged: (value) => setState(() {
            wantPasta = value!;
          }),
        ),
      ],
    );
  }
}
