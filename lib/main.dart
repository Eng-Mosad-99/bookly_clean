import 'package:bookly_clean/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_clean/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_clean/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly_clean/Features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:bookly_clean/Features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly_clean/core/service/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'constants.dart';
import 'core/router/app_router.dart';
import 'core/utils/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyClean());
}

class BooklyClean extends StatelessWidget {
  const BooklyClean({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            FetchFeaturedBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            FetchNewestBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: ThemeData.dark().copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
