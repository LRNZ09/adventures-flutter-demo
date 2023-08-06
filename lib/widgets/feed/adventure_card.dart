import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:senior_flutter_challenge/models/adventure/adventure.dart';

class AdventureCard extends StatelessWidget {
  final Adventure adventure;

  const AdventureCard({super.key, required this.adventure});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: adventure.contents[0].contentUrl,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundImage: NetworkImage(
                adventure.activityIcon,
              ),
            ),
            title: Text(adventure.title),
            subtitle: Text(adventure.primaryDescription),
            isThreeLine: true,
          ),
        ],
      ),
    );
  }
}
