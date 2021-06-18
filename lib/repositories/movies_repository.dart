import 'package:dio/dio.dart';
import 'package:movies_app/db/models/movie.dart';

class MoviesRepository {
  const MoviesRepository();

  Future<List<Movie>> getMovies() async {
    var dio = Dio();
    return await dio.get(
      "https://api.themoviedb.org/3/movie/now_playing",
      queryParameters: {
        "api_key": "f55fbda0cb73b855629e676e54ab6d8e",
      },
    ).then(
      (response) {
        return (response.data["results"] as List)
            .map((map) => Movie.fromJson(map))
            .toList();
      },
    ).catchError(
      (onError) {},
    );
  }
}
