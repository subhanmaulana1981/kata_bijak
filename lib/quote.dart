class Quote {

  String text;
  String author;

  // Konstruktor standar
  /*
  Quote(String text, String author) {
    this.text = text;
    this.author = author;
  }
  */

  // Konstruktor dengan query parameter
  Quote({ required this.text, required this.author });

}