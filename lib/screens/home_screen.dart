import 'package:flutter/material.dart';
import '../widgets/center_content.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            title: Text('Center'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              CenterContent(),
            ]),
          ),
        ],
      ),
    );
  }
}
