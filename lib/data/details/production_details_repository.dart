import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_search_challenge/data/core/clients/omdb_api_client.dart';
import 'package:movie_search_challenge/data/core/models/movie_dto.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/domain/details/details_interface.dart';

/// Production implementation of [DetailsRepositoryInterface]
@LazySingleton(as: DetailsRepositoryInterface)
class MovieDetailsRepositoryImpl implements DetailsRepositoryInterface {
  /// Constructor for [MovieDetailsRepositoryImpl]
  MovieDetailsRepositoryImpl(this._apiClient);

  final OmdbApiClient _apiClient;

  @override
  Future<Either<Failure, Movie>> getMovieDetails({required MovieId id}) async {
    try {
      if (id.isValid()) {
        final raw = await _apiClient.getDetailsRaw(id: id.getOrCrash());
        final model = MovieDTO.fromJson(raw);
        return right(model.toDomain());
      } else {
        return left(id.failureOrCrash());
      }
    } on Exception catch (exception) {
      return left(
        Failure.unexpectedError(errorMessage: exception.toString()),
      );
    }
  }
}
