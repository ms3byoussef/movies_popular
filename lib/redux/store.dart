import 'package:movies_app/redux/app_reducer.dart';
import 'package:movies_app/redux/movies/movies_middelware.dart';
import 'package:redux/redux.dart';

import 'app_state.dart';

createStore() {
  return Store<AppState>(
    appReducer,
    initialState: AppState.inital(),
    middleware: [
      ...createMoviesMiddleware(),
    ],
  );
}
