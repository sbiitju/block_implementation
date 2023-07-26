import 'package:block_implementation/features/auth/data/repositories/auth_repo_imp.dart';
import 'package:block_implementation/features/auth/domain/repositories/auth_repo.dart';
import 'package:block_implementation/features/auth/domain/usecases/auth_usecase.dart';
import 'package:block_implementation/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:get_it/get_it.dart';

import '../network/rest_client.dart';

part 'bloc.dart';
part 'data_source.dart';
part 'repository.dart';
part 'use_case.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Bloc
  await _initBlocs();

  /// Use Case
  await _initUseCases();

  /// Repository
  await _initRepositories();

  /// Datasource
  await _initDataSources();

  /// Externals
  final restClient = RestClient();
  sl.registerLazySingleton(
    () => restClient,
  );
}
