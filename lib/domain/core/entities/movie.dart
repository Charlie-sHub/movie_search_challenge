import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_year.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/poster_url.dart';

part 'movie.freezed.dart';

/// Movie entity
@freezed
abstract class Movie with _$Movie {
  const Movie._();

  /// Main constructor for Movie entity
  const factory Movie({
    required MovieId id,
    required MovieTitle title,
    required MovieYear year,
    required PosterUrl posterUrl,
    String? type,
    String? plot,
    String? director,
    String? actors,
    String? genre,
    Map<String, String>? ratings,
  }) = _Movie;

  /// Shortcut constructor for a minimal movie
  factory Movie.summary({
    required String id,
    required String title,
    required String year,
    required String posterUrl,
    String? type,
  }) =>
      Movie(
        id: MovieId(id),
        title: MovieTitle(title),
        year: MovieYear(year),
        posterUrl: PosterUrl(posterUrl),
        type: type,
      );

  /// Gets an [Option] of [Failure] of any of its fields
  Option<Failure<dynamic>> get failureOption => Either.map4(
        this.id.failureOrUnit,
        title.failureOrUnit,
        year.failureOrUnit,
        posterUrl.failureOrUnit,
        (_, _, _, _) => unit,
      ).fold(
        some,
        (_) => none(),
      );

  /// Checks if the entity is valid
  bool get isValid => failureOption.isNone();
}
