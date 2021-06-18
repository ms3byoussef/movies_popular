import 'package:movies_app/db/models/movie.dart';
import 'package:movies_app/redux/movies/movies_actions.dart';
import 'package:movies_app/redux/movies/movies_state.dart';
import 'package:redux/redux.dart';

final moviesReducers = combineReducers<MoviesState>([
  TypedReducer<MoviesState, SyncMoviesAction>(SyncMovies),
]);
MoviesState SyncMovies(MoviesState state, SyncMoviesAction action) {
  state.movies = action.movies;
  return state;
}
