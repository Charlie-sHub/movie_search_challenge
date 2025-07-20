// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/details/details_watcher_bloc.dart' as _i1061;
import 'application/search/search_bloc.dart' as _i767;
import 'data/core/clients/omdb_api_client.dart' as _i519;
import 'data/core/modules/client_module.dart' as _i551;
import 'data/details/production_details_repository.dart' as _i597;
import 'data/search/production_search_repository.dart' as _i1030;
import 'domain/details/details_interface.dart' as _i757;
import 'domain/search/search_interface.dart' as _i765;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final clientModule = _$ClientModule();
    gh.singleton<String>(
      () => clientModule.omdbApiKey,
      instanceName: 'omdbApiKey',
    );
    gh.singleton<_i519.OmdbApiClient>(
      () => clientModule.omdbApiClient(gh<String>(instanceName: 'omdbApiKey')),
    );
    gh.lazySingleton<_i765.SearchRepositoryInterface>(
      () => _i1030.ProductionSearchRepository(gh<_i519.OmdbApiClient>()),
    );
    gh.lazySingleton<_i757.DetailsRepositoryInterface>(
      () => _i597.MovieDetailsRepositoryImpl(gh<_i519.OmdbApiClient>()),
    );
    gh.factory<_i1061.DetailsWatcherBloc>(
      () => _i1061.DetailsWatcherBloc(gh<_i757.DetailsRepositoryInterface>()),
    );
    gh.factory<_i767.SearchBloc>(
      () => _i767.SearchBloc(gh<_i765.SearchRepositoryInterface>()),
    );
    return this;
  }
}

class _$ClientModule extends _i551.ClientModule {}
