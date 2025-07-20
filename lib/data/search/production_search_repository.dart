import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_search_challenge/data/core/clients/omdb_api_client.dart';
import 'package:movie_search_challenge/data/core/models/movie_dto.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';
import 'package:movie_search_challenge/domain/search/search_interface.dart';

/// Production implementation of [SearchRepositoryInterface]
@LazySingleton(as: SearchRepositoryInterface)
class ProductionSearchRepository implements SearchRepositoryInterface {
  /// Constructor for [ProductionSearchRepository]
  ProductionSearchRepository(this._apiClient);

  final OmdbApiClient _apiClient;

  @override
  Future<Either<Failure, List<Movie>>> search({
    required MovieTitle title,
    required int page,
  }) async {
    try {
      final raw = await _apiClient.searchRaw(
        title: title.getOrCrash(),
        page: page,
      );
      final list = raw['Search'] as List<dynamic>;
      final models = list.map(
        (element) => MovieDTO.fromJson(element as Map<String, dynamic>),
      );
      final movies = models.map((model) => model.toDomain()).toList();
      return right(movies);
    } on Exception catch (exception) {
      return left(
        Failure.unexpectedError(errorMessage: exception.toString()),
      );
    }
  }
}
