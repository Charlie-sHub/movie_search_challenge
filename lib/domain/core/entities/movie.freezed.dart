// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Movie {

 MovieId get id; MovieTitle get title; MovieYear get year; PosterUrl get posterUrl; String? get type; String? get plot; String? get director; String? get actors; String? get genre; Map<String, String>? get ratings;
/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCopyWith<Movie> get copyWith => _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Movie&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.director, director) || other.director == director)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.genre, genre) || other.genre == genre)&&const DeepCollectionEquality().equals(other.ratings, ratings));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,year,posterUrl,type,plot,director,actors,genre,const DeepCollectionEquality().hash(ratings));

@override
String toString() {
  return 'Movie(id: $id, title: $title, year: $year, posterUrl: $posterUrl, type: $type, plot: $plot, director: $director, actors: $actors, genre: $genre, ratings: $ratings)';
}


}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res>  {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) = _$MovieCopyWithImpl;
@useResult
$Res call({
 MovieId id, MovieTitle title, MovieYear year, PosterUrl posterUrl, String? type, String? plot, String? director, String? actors, String? genre, Map<String, String>? ratings
});




}
/// @nodoc
class _$MovieCopyWithImpl<$Res>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? year = null,Object? posterUrl = null,Object? type = freezed,Object? plot = freezed,Object? director = freezed,Object? actors = freezed,Object? genre = freezed,Object? ratings = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as MovieId,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MovieTitle,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as MovieYear,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as PosterUrl,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,ratings: freezed == ratings ? _self.ratings : ratings // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Movie].
extension MoviePatterns on Movie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Movie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Movie value)  $default,){
final _that = this;
switch (_that) {
case _Movie():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Movie value)?  $default,){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MovieId id,  MovieTitle title,  MovieYear year,  PosterUrl posterUrl,  String? type,  String? plot,  String? director,  String? actors,  String? genre,  Map<String, String>? ratings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.id,_that.title,_that.year,_that.posterUrl,_that.type,_that.plot,_that.director,_that.actors,_that.genre,_that.ratings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MovieId id,  MovieTitle title,  MovieYear year,  PosterUrl posterUrl,  String? type,  String? plot,  String? director,  String? actors,  String? genre,  Map<String, String>? ratings)  $default,) {final _that = this;
switch (_that) {
case _Movie():
return $default(_that.id,_that.title,_that.year,_that.posterUrl,_that.type,_that.plot,_that.director,_that.actors,_that.genre,_that.ratings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MovieId id,  MovieTitle title,  MovieYear year,  PosterUrl posterUrl,  String? type,  String? plot,  String? director,  String? actors,  String? genre,  Map<String, String>? ratings)?  $default,) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.id,_that.title,_that.year,_that.posterUrl,_that.type,_that.plot,_that.director,_that.actors,_that.genre,_that.ratings);case _:
  return null;

}
}

}

/// @nodoc


class _Movie extends Movie {
  const _Movie({required this.id, required this.title, required this.year, required this.posterUrl, this.type, this.plot, this.director, this.actors, this.genre, final  Map<String, String>? ratings}): _ratings = ratings,super._();
  

@override final  MovieId id;
@override final  MovieTitle title;
@override final  MovieYear year;
@override final  PosterUrl posterUrl;
@override final  String? type;
@override final  String? plot;
@override final  String? director;
@override final  String? actors;
@override final  String? genre;
 final  Map<String, String>? _ratings;
@override Map<String, String>? get ratings {
  final value = _ratings;
  if (value == null) return null;
  if (_ratings is EqualUnmodifiableMapView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCopyWith<_Movie> get copyWith => __$MovieCopyWithImpl<_Movie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Movie&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.director, director) || other.director == director)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.genre, genre) || other.genre == genre)&&const DeepCollectionEquality().equals(other._ratings, _ratings));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,year,posterUrl,type,plot,director,actors,genre,const DeepCollectionEquality().hash(_ratings));

@override
String toString() {
  return 'Movie(id: $id, title: $title, year: $year, posterUrl: $posterUrl, type: $type, plot: $plot, director: $director, actors: $actors, genre: $genre, ratings: $ratings)';
}


}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) = __$MovieCopyWithImpl;
@override @useResult
$Res call({
 MovieId id, MovieTitle title, MovieYear year, PosterUrl posterUrl, String? type, String? plot, String? director, String? actors, String? genre, Map<String, String>? ratings
});




}
/// @nodoc
class __$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? year = null,Object? posterUrl = null,Object? type = freezed,Object? plot = freezed,Object? director = freezed,Object? actors = freezed,Object? genre = freezed,Object? ratings = freezed,}) {
  return _then(_Movie(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as MovieId,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MovieTitle,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as MovieYear,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as PosterUrl,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,ratings: freezed == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

// dart format on
