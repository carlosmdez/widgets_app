import 'package:flutter/material.dart';

const cardsList = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 6.0, 'label': 'Elevation 6'},
  {'elevation': 12.0, 'label': 'Elevation 12'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ...cardsList
              .map((card) => _CardType1(
                  elevation: card['elevation'], label: card['label']))
              .toList(),
          ...cardsList
              .map((card) => _CardType2(
                  elevation: card['elevation'], label: card['label']))
              .toList(),
          ...cardsList
              .map((card) => _CardType3(
                  elevation: card['elevation'], label: card['label']))
              .toList(),
          ...cardsList
              .map((card) => _CardType4(
                  elevation: card['elevation'], label: card['label']))
              .toList(),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(label),
              ),
            ],
          ),
        ));
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          side: BorderSide(
            color: colors.outline,
          ),
        ),
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('$label - outline'),
              ),
            ],
          ),
        ));
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
        color: colors.surfaceVariant,
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('$label - filled'),
              ),
            ],
          ),
        ));
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.hardEdge,
        elevation: elevation,
        child: Stack(
          children: <Widget>[
            Image.network(
              'https://picsum.photos/id/${elevation.toInt()}/600/250',
              fit: BoxFit.cover,
              height: 350,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('$label - image'),
            ),
          ],
        ));
  }
}
