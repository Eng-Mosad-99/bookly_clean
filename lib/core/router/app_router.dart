import 'package:bookly_clean/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/home/presentation/views/book_details_view.dart';
import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/book_details',
      builder: (context, state) => const BookDetailsView(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchView(),
    ),
  ],
);
