import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';

class BookMarksListTileWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookMarksListTileWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(bookmark.title, style: Theme.of(context).textTheme.subtitle1),
      subtitle:
          Text(bookmark.link, style: Theme.of(context).textTheme.subtitle2),
      onTap: () => print(bookmark.title),
    );
  }
}
