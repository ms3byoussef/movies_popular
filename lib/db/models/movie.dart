class Movie {
  String? title;
  String? overview;
  String? date;
  String? posterImage;
  double? rate;
  int? voteCount;

  Movie({
    this.title,
    this.overview,
    this.date,
    this.posterImage,
    this.rate,
    this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["title"],
        overview: json["overview"],
        date: json["release_date"],
        posterImage: json["poster_path"],
        rate: json["vote_average"],
        voteCount: json["vote_count"]);
  }
}
