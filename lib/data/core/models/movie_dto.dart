// Need to use @JsonKey(name: '') to account for the fields of the OMDb API
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_search_challenge/domain/core/entities/movie.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_title.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_year.dart';
import 'package:movie_search_challenge/domain/core/validation/value_objects/poster_url.dart';

part 'movie_dto.freezed.dart';

part 'movie_dto.g.dart';

/// DTO for movie model
@freezed
abstract class MovieDTO with _$MovieDTO {
  const MovieDTO._();

  /// Constructor for [MovieDTO]
  const factory MovieDTO({
    @JsonKey(name: 'imdbID') required String id,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Year') required String year,
    @JsonKey(name: 'Poster') required String posterUrl,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'Plot') String? plot,
    @JsonKey(name: 'Director') String? director,
    @JsonKey(name: 'Actors') String? actors,
    @JsonKey(name: 'Genre') String? genre,
  }) = _MovieDTO;

  /// Factory constructor for [MovieDTO] from JSON
  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDTOFromJson(json);

  /// Constructs a [MovieDTO] from domain [Movie]
  factory MovieDTO.fromDomain(Movie movie) => MovieDTO(
    id: movie.id.getOrCrash(),
    title: movie.title.getOrCrash(),
    year: movie.year.getOrCrash(),
    posterUrl: movie.posterUrl.getOrCrash(),
    type: movie.type,
    plot: movie.plot,
    director: movie.director,
    actors: movie.actors,
    genre: movie.genre,
  );

  /// Convert to domain Movie entity
  Movie toDomain() => Movie(
    id: MovieId(id),
    title: MovieTitle(title),
    year: MovieYear(year),
    posterUrl: PosterUrl(posterUrl),
    type: type,
    plot: plot,
    director: director,
    actors: actors,
    genre: genre,
  );
}
