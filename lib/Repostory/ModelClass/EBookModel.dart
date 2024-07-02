class EBookModel {
  EBookModel({
      this.bookTitle, 
      this.bookImage, 
      this.bookDescription, 
      this.bookAuthor, 
      this.bookPublisher, 
      this.amazonBookUrl, 
      this.bookIsbn, 
      this.bookRank,});

  EBookModel.fromJson(dynamic json) {
    bookTitle = json['bookTitle'];
    bookImage = json['bookImage'];
    bookDescription = json['bookDescription'];
    bookAuthor = json['bookAuthor'];
    bookPublisher = json['bookPublisher'];
    amazonBookUrl = json['amazonBookUrl'];
    bookIsbn = json['bookIsbn'];
    bookRank = json['bookRank'];
  }
  String? bookTitle;
  String? bookImage;
  String? bookDescription;
  String? bookAuthor;
  String? bookPublisher;
  String? amazonBookUrl;
  String? bookIsbn;
  int? bookRank;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bookTitle'] = bookTitle;
    map['bookImage'] = bookImage;
    map['bookDescription'] = bookDescription;
    map['bookAuthor'] = bookAuthor;
    map['bookPublisher'] = bookPublisher;
    map['amazonBookUrl'] = amazonBookUrl;
    map['bookIsbn'] = bookIsbn;
    map['bookRank'] = bookRank;
    return map;
  }
  static List<EBookModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => EBookModel.fromJson(value)).toList();
  }}
