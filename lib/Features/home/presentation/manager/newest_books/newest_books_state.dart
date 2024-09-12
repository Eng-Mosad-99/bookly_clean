part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> books;

  NewestBooksSuccess(this.books);
}

final class NewestBooksFailure extends NewestBooksState {
  final String message;

  NewestBooksFailure(this.message);
}

