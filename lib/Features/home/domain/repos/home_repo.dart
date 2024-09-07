import 'package:bookly_clean/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
