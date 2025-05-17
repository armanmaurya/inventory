import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          snap: true,
          title: Text('Analytics'),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: Text('Page 3 Content')),
        ),
      ],
    );
  }
}
