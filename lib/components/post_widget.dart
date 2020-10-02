import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmer_flutter/constants.dart';

class PostWidget extends StatelessWidget {

  PostWidget({
    @required this.title,
    @required this.description,
    @required this.author,
    @required this.postedTime,
  });

  final String title, description, author, postedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius:
          const BorderRadius.all(Radius.circular(Constants.cornerRadius)),
          color: Colors.white,
          boxShadow: Constants.lightShadow
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: Constants.cardMarginHorizontal),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.cardMarginHorizontal
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Text(
                    author,
                    style: Constants.kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: Constants.padding),
                Text(
                  postedTime,
                  style: Constants.kTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: Constants.cardMarginHorizontal),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.cardMarginHorizontal
            ),
            child: Text(
              title,
              style: Constants.kTextStyle.copyWith(fontSize: 18),
            ),
          ),
          const SizedBox(height: Constants.padding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.cardMarginHorizontal
            ),
            child: Text(
              description,
            ),
          ),
          const SizedBox(height: Constants.cardMarginHorizontal),
        ],
      ),
    );
  }
}

class LoadingPost extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Constants.cardMarginHorizontal),
      decoration: BoxDecoration(
          borderRadius:
          const BorderRadius.all(Radius.circular(Constants.cornerRadius)),
          color: Colors.white,
          boxShadow: Constants.lightShadow
      ),
      child: Shimmer.fromColors(
        highlightColor: Colors.grey[100],
        baseColor: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: Constants.cardMarginHorizontal),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: Constants.textUser,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(Constants.minRadius)
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: Constants.paddingExLarge),
                Container(
                  height: Constants.textPrimary,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(Constants.minRadius)
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Constants.cardMarginHorizontal),
            Container(
              height: Constants.textSmallHeading,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                    Radius.circular(Constants.minRadius)
                ),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: Constants.cardMarginHorizontal),
            Container(
              height: Constants.textPrimary,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                    Radius.circular(Constants.minRadius)
                ),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: Constants.padding),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                    Radius.circular(Constants.minRadius)
                ),
                color: Colors.white,
              ),
              height: Constants.textPrimary,
              width: double.infinity,
            ),
            const SizedBox(height: Constants.padding),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                    Radius.circular(Constants.minRadius)
                ),
                color: Colors.white,
              ),
              height: Constants.textPrimary,
              width: 240,
            ),
            const SizedBox(height: Constants.cardMarginHorizontal),
          ],
        ),
      ),
    );
  }
}
