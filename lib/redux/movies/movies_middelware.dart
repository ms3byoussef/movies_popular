import 'package:movies_app/db/models/movie.dart';
import 'package:movies_app/redux/app_state.dart';
import 'package:movies_app/redux/movies/movies_actions.dart';
import 'package:movies_app/repositories/movies_repository.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createMoviesMiddleware([
  MoviesRepository moviesRepository = const MoviesRepository(),
]) {
  final _getMovies = getMovies(moviesRepository);
  return [
    TypedMiddleware<AppState, GetMoviesAction>(_getMovies),
  ];
}

Middleware<AppState> getMovies(MoviesRepository repository) {
  return (Store<AppState> store, dynamic action, NextDispatcher next) async {
    List<Movie> movies = await repository.getMovies();
    next(SyncMoviesAction(movies));
  };
}
