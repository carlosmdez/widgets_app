import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  final ScrollController scrollController = ScrollController();
  List<int> imagesIds = [1, 2, 3, 4, 5, 6];
  bool isLoading = false;
  bool isMounted = true;

  Future addMoreImages() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    for (int i = 1; i <= 6; i++) {
      imagesIds.add(lastId + i);
    }
    isLoading = false;
    if (!isMounted) return;
    setState(() {});
    moveScrollToButtom();
  }

  Future<void> onRefresh() async {
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));
    final lastId = imagesIds.last;
    imagesIds.clear();
    for (int i = 1; i <= 6; i++) {
      imagesIds.add(lastId + i);
    }
    isLoading = false;
    if (!isMounted) return;
    setState(() {});
  }

  void moveScrollToButtom() {
    if (scrollController.position.pixels <=
        scrollController.position.maxScrollExtent - 100) return;
    scrollController.animateTo(
      scrollController.position.pixels + 200,
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
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
    isMounted = false;
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
          child: RefreshIndicator(
            onRefresh: onRefresh,
            edgeOffset: 10,
            strokeWidth: 2,
            child: ListView.builder(
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (context, index) {
                return FadeInImage(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                  placeholder:
                      const AssetImage('assets/images/jar-loading.gif'),
                  image: NetworkImage(
                      'https://picsum.photos/id/${imagesIds[index]}/500/300'),
                );
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: isLoading
              ? SpinPerfect(
                  infinite: true,
                  child: const Icon(Icons.refresh),
                )
              : FadeIn(child: const Icon(Icons.arrow_back_ios_rounded)),
        ));
  }
}
