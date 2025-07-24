import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static String kHomeViewRoute = '/homeView';
  static String kBookDetailsViewRoute = "/bookDetailsView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeViewRoute, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsViewRoute,
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}
