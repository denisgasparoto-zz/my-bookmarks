import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/widget/bookmark_grid_item_widget.dart';

class BookMarksGridWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;

  BookMarksGridWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
        itemCount: bookmarksList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.5,
          crossAxisCount: 2,
          crossAxisSpacing: 6,
        ),
        itemBuilder: (BuildContext context, int index) {
          return BookMarkGridItemWidget(bookmarksList[index]);
        },
      ),
    );
  }
}
