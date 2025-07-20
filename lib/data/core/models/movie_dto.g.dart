// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDTO _$MovieDTOFromJson(Map<String, dynamic> json) => _MovieDTO(
  id: json['imdbID'] as String,
  title: json['Title'] as String,
  year: json['Year'] as String,
  posterUrl: json['Poster'] as String,
  type: json['Type'] as String?,
  plot: json['Plot'] as String?,
  director: json['Director'] as String?,
  actors: json['Actors'] as String?,
  genre: json['Genre'] as String?,
);

Map<String, dynamic> _$MovieDTOToJson(_MovieDTO instance) => <String, dynamic>{
  'imdbID': instance.id,
  'Title': instance.title,
  'Year': instance.year,
  'Poster': instance.posterUrl,
  'Type': instance.type,
  'Plot': instance.plot,
  'Director': instance.director,
  'Actors': instance.actors,
  'Genre': instance.genre,
};
