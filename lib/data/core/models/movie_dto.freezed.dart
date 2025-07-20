// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDTO {

@JsonKey(name: 'imdbID') String get id;@JsonKey(name: 'Title') String get title;@JsonKey(name: 'Year') String get year;@JsonKey(name: 'Poster') String get posterUrl;@JsonKey(name: 'Type') String? get type;@JsonKey(name: 'Plot') String? get plot;@JsonKey(name: 'Director') String? get director;@JsonKey(name: 'Actors') String? get actors;@JsonKey(name: 'Genre') String? get genre;
/// Create a copy of MovieDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDTOCopyWith<MovieDTO> get copyWith => _$MovieDTOCopyWithImpl<MovieDTO>(this as MovieDTO, _$identity);

  /// Serializes this MovieDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.director, director) || other.director == director)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.genre, genre) || other.genre == genre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,year,posterUrl,type,plot,director,actors,genre);

@override
String toString() {
  return 'MovieDTO(id: $id, title: $title, year: $year, posterUrl: $posterUrl, type: $type, plot: $plot, director: $director, actors: $actors, genre: $genre)';
}


}

/// @nodoc
abstract mixin class $MovieDTOCopyWith<$Res>  {
  factory $MovieDTOCopyWith(MovieDTO value, $Res Function(MovieDTO) _then) = _$MovieDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'imdbID') String id,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Year') String year,@JsonKey(name: 'Poster') String posterUrl,@JsonKey(name: 'Type') String? type,@JsonKey(name: 'Plot') String? plot,@JsonKey(name: 'Director') String? director,@JsonKey(name: 'Actors') String? actors,@JsonKey(name: 'Genre') String? genre
});




}
/// @nodoc
class _$MovieDTOCopyWithImpl<$Res>
    implements $MovieDTOCopyWith<$Res> {
  _$MovieDTOCopyWithImpl(this._self, this._then);

  final MovieDTO _self;
  final $Res Function(MovieDTO) _then;

/// Create a copy of MovieDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? year = null,Object? posterUrl = null,Object? type = freezed,Object? plot = freezed,Object? director = freezed,Object? actors = freezed,Object? genre = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDTO].
extension MovieDTOPatterns on MovieDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDTO value)  $default,){
final _that = this;
switch (_that) {
case _MovieDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDTO value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'imdbID')  String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Year')  String year, @JsonKey(name: 'Poster')  String posterUrl, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Genre')  String? genre)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDTO() when $default != null:
return $default(_that.id,_that.title,_that.year,_that.posterUrl,_that.type,_that.plot,_that.director,_that.actors,_that.genre);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'imdbID')  String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Year')  String year, @JsonKey(name: 'Poster')  String posterUrl, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Genre')  String? genre)  $default,) {final _that = this;
switch (_that) {
case _MovieDTO():
return $default(_that.id,_that.title,_that.year,_that.posterUrl,_that.type,_that.plot,_that.director,_that.actors,_that.genre);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'imdbID')  String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Year')  String year, @JsonKey(name: 'Poster')  String posterUrl, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Genre')  String? genre)?  $default,) {final _that = this;
switch (_that) {
case _MovieDTO() when $default != null:
return $default(_that.id,_that.title,_that.year,_that.posterUrl,_that.type,_that.plot,_that.director,_that.actors,_that.genre);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDTO extends MovieDTO {
  const _MovieDTO({@JsonKey(name: 'imdbID') required this.id, @JsonKey(name: 'Title') required this.title, @JsonKey(name: 'Year') required this.year, @JsonKey(name: 'Poster') required this.posterUrl, @JsonKey(name: 'Type') this.type, @JsonKey(name: 'Plot') this.plot, @JsonKey(name: 'Director') this.director, @JsonKey(name: 'Actors') this.actors, @JsonKey(name: 'Genre') this.genre}): super._();
  factory _MovieDTO.fromJson(Map<String, dynamic> json) => _$MovieDTOFromJson(json);

@override@JsonKey(name: 'imdbID') final  String id;
@override@JsonKey(name: 'Title') final  String title;
@override@JsonKey(name: 'Year') final  String year;
@override@JsonKey(name: 'Poster') final  String posterUrl;
@override@JsonKey(name: 'Type') final  String? type;
@override@JsonKey(name: 'Plot') final  String? plot;
@override@JsonKey(name: 'Director') final  String? director;
@override@JsonKey(name: 'Actors') final  String? actors;
@override@JsonKey(name: 'Genre') final  String? genre;

/// Create a copy of MovieDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDTOCopyWith<_MovieDTO> get copyWith => __$MovieDTOCopyWithImpl<_MovieDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.director, director) || other.director == director)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.genre, genre) || other.genre == genre));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,year,posterUrl,type,plot,director,actors,genre);

@override
String toString() {
  return 'MovieDTO(id: $id, title: $title, year: $year, posterUrl: $posterUrl, type: $type, plot: $plot, director: $director, actors: $actors, genre: $genre)';
}


}

/// @nodoc
abstract mixin class _$MovieDTOCopyWith<$Res> implements $MovieDTOCopyWith<$Res> {
  factory _$MovieDTOCopyWith(_MovieDTO value, $Res Function(_MovieDTO) _then) = __$MovieDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'imdbID') String id,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Year') String year,@JsonKey(name: 'Poster') String posterUrl,@JsonKey(name: 'Type') String? type,@JsonKey(name: 'Plot') String? plot,@JsonKey(name: 'Director') String? director,@JsonKey(name: 'Actors') String? actors,@JsonKey(name: 'Genre') String? genre
});




}
/// @nodoc
class __$MovieDTOCopyWithImpl<$Res>
    implements _$MovieDTOCopyWith<$Res> {
  __$MovieDTOCopyWithImpl(this._self, this._then);

  final _MovieDTO _self;
  final $Res Function(_MovieDTO) _then;

/// Create a copy of MovieDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? year = null,Object? posterUrl = null,Object? type = freezed,Object? plot = freezed,Object? director = freezed,Object? actors = freezed,Object? genre = freezed,}) {
  return _then(_MovieDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
