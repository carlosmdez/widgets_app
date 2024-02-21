import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_rounded),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        children: [
          ElevatedButton(
              onPressed: () {}, child: const Text('Elevated Button')),
          const ElevatedButton(
              onPressed: null, child: Text('Elevated Disabled')),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.alarm),
            label: const Text('Alarm'),
          ),
          FilledButton(onPressed: () {}, child: const Text('Filled')),
          _CustomButton(),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
            label: const Text('User'),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.airplanemode_active_rounded),
            label: const Text('Airplane'),
          ),
          TextButton(onPressed: () {}, child: const Text('Text Button')),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person_pin_circle_rounded),
            label: const Text('Ubi'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            color: colors.primary,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: const MaterialStatePropertyAll(Colors.white),
            ),
          ),
          _CustomButton(),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 64, minHeight: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: colors.primary,
          child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Custom Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
