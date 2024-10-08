part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;
  FeaturedBooksSuccess({required this.books});
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;
  FeaturedBooksFailure({required this.message});
}
