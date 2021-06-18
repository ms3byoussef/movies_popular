import 'package:movies_app/db/models/movie.dart';
import 'package:movies_app/redux/movies/movies_state.dart';

class AppState {
  MoviesState? moviesState;
  AppState({this.moviesState});
  AppState.inital() {
    this.moviesState = MoviesState.intial();
  }
}
