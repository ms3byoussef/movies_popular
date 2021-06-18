import 'package:movies_app/db/models/movie.dart';

class GetMoviesAction {}

class SyncMoviesAction {
  SyncMoviesAction(this.movies);

  List<Movie> movies;
}
