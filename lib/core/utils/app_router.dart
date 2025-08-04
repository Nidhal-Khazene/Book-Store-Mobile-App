import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gramaz_app/core/utils/service_locator.dart';
import 'package:gramaz_app/features/home/data/repos/home_repo_impl.dart';
import 'package:gramaz_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:gramaz_app/features/home/presentation/views/home_view.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:gramaz_app/features/search/data/repos/search_repo_impl.dart';
import 'package:gramaz_app/features/search/presentation/manager/searched_books_cubit/search_books_cubit.dart';
import 'package:gramaz_app/features/search/presentation/views/search_view.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static String kHomeViewRoute = '/homeView';
  static String kBookDetailsViewRoute = "/bookDetailsView";
  static String kSearchViewRoute = "/searchView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kSearchViewRoute,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SearchBooksCubit(searchRepo: getIt.get<SearchRepoImpl>()),
          child: const SearchView(),
        ),
      ),
      GoRoute(
        path: kHomeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewRoute,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child: BookDetailsView(book: state.extra as BookModel),
        ),
      ),
    ],
  );
}
