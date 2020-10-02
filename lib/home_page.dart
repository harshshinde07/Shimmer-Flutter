import 'package:flutter/material.dart';
import 'package:shimmer_flutter/components/post_widget.dart';
import 'package:shimmer_flutter/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.colorBackground,
      appBar: AppBar(
        title: Text('Custom Loading Shimmer Example'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(Constants.padding),
            child: PostWidget(
              title: 'Post Title',
              author: 'Harsh',
              postedTime: '3 Days ago',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Constants.padding),
            child: LoadingPost(),
          ),
        ],
      ),
    );
  }
}
