import 'package:bookly_clean/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_clean/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_clean/core/errors/failure.dart';
import 'package:bookly_clean/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParams? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
