import 'package:bookly_clean/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_clean/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_clean/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_clean/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );

  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
}
