import 'package:flutter/cupertino.dart';
import 'package:movies_app/redux/app_state.dart';
import 'package:movies_app/redux/movies/movies_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    moviesState: moviesReducers(state.moviesState!, action),
  );
}
