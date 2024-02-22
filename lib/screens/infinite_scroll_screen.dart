import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIds = [1, 2, 3, 4, 5, 6];
  final ScrollController scrollController = ScrollController();

  void addMoreImages() {
    final lastId = imagesIds.last;
    for (int i = 1; i <= 6; i++) {
      imagesIds.add(lastId + i);
    }
    setState(() {});
    print(imagesIds);
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          (scrollController.position.maxScrollExtent - 500)) {
        addMoreImages();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/id/${imagesIds[index]}/500/300'),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ));
  }
}
