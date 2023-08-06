import 'package:cached_query_flutter/cached_query_flutter.dart';
import 'package:flutter/material.dart';
import 'package:senior_flutter_challenge/api/queries/adventures/model.dart';
import 'package:senior_flutter_challenge/api/queries/adventures/query.dart';

import 'adventure_card.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final adventuresQuery = InfiniteQuery<AdventuresResponse, int>(
    getNextArg: (state) {
      if (state.lastPage != null && state.lastPage!.next == null) return null;

      return state.length;
    },
    queryFn: getAdventures,
    key: 'adventures',
    config: QueryConfig(
      serializer: (dynamic json) => (json as List<dynamic>)
          .map((element) => AdventuresResponse.fromJson(element))
          .toList(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return InfiniteQueryBuilder(
      query: adventuresQuery,
      builder: (context, state, query) {
        if (state.length == 0 && state.status == QueryStatus.loading) {
          return const LinearProgressIndicator();
        }

        if (state.status == QueryStatus.error) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('An error occurred.'),
                TextButton(
                  onPressed: adventuresQuery.refetch,
                  child: const Text('Retry'),
                )
              ],
            ),
          );
        }

        final allAdventures = state.data!.expand((response) => response.data);

        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification.metrics.atEdge &&
                notification.metrics.pixels != 0) {
              adventuresQuery.getNextPage();
            }
            return false;
          },
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final adventure = allAdventures.elementAt(index);
                    return AdventureCard(adventure: adventure);
                  },
                  childCount: allAdventures.length,
                ),
              ),
              if (state.status == QueryStatus.loading)
                const SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              SliverPadding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
