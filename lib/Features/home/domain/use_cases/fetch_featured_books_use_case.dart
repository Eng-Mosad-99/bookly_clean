import 'package:bookly_clean/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_clean/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_cases/use_case.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParams? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}

class NoParams {}
