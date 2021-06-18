import 'package:movies_app/db/models/movie.dart';

class MoviesState {
  late List<Movie> movies;

  // named constractor
  MoviesState.intial() {
    this.movies = [];
  }
}
