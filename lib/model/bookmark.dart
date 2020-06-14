

class Bookmark {
  String title;
  String link; //url

  Bookmark(this.title, this.link);
}

class DummyWidget {
  Bookmark b = new Bookmark("123", "12.4");
}
