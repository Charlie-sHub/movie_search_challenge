// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( QueryChanged value)?  queryChanged,TResult Function( SearchRequested value)?  searchRequested,TResult Function( LoadNextPage value)?  loadNextPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case QueryChanged() when queryChanged != null:
return queryChanged(_that);case SearchRequested() when searchRequested != null:
return searchRequested(_that);case LoadNextPage() when loadNextPage != null:
return loadNextPage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( QueryChanged value)  queryChanged,required TResult Function( SearchRequested value)  searchRequested,required TResult Function( LoadNextPage value)  loadNextPage,}){
final _that = this;
switch (_that) {
case QueryChanged():
return queryChanged(_that);case SearchRequested():
return searchRequested(_that);case LoadNextPage():
return loadNextPage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( QueryChanged value)?  queryChanged,TResult? Function( SearchRequested value)?  searchRequested,TResult? Function( LoadNextPage value)?  loadNextPage,}){
final _that = this;
switch (_that) {
case QueryChanged() when queryChanged != null:
return queryChanged(_that);case SearchRequested() when searchRequested != null:
return searchRequested(_that);case LoadNextPage() when loadNextPage != null:
return loadNextPage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title)?  queryChanged,TResult Function()?  searchRequested,TResult Function()?  loadNextPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case QueryChanged() when queryChanged != null:
return queryChanged(_that.title);case SearchRequested() when searchRequested != null:
return searchRequested();case LoadNextPage() when loadNextPage != null:
return loadNextPage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title)  queryChanged,required TResult Function()  searchRequested,required TResult Function()  loadNextPage,}) {final _that = this;
switch (_that) {
case QueryChanged():
return queryChanged(_that.title);case SearchRequested():
return searchRequested();case LoadNextPage():
return loadNextPage();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title)?  queryChanged,TResult? Function()?  searchRequested,TResult? Function()?  loadNextPage,}) {final _that = this;
switch (_that) {
case QueryChanged() when queryChanged != null:
return queryChanged(_that.title);case SearchRequested() when searchRequested != null:
return searchRequested();case LoadNextPage() when loadNextPage != null:
return loadNextPage();case _:
  return null;

}
}

}

/// @nodoc


class QueryChanged implements SearchEvent {
  const QueryChanged({required this.title});
  

 final  String title;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryChangedCopyWith<QueryChanged> get copyWith => _$QueryChangedCopyWithImpl<QueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryChanged&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'SearchEvent.queryChanged(title: $title)';
}


}

/// @nodoc
abstract mixin class $QueryChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $QueryChangedCopyWith(QueryChanged value, $Res Function(QueryChanged) _then) = _$QueryChangedCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$QueryChangedCopyWithImpl<$Res>
    implements $QueryChangedCopyWith<$Res> {
  _$QueryChangedCopyWithImpl(this._self, this._then);

  final QueryChanged _self;
  final $Res Function(QueryChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(QueryChanged(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchRequested implements SearchEvent {
  const SearchRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.searchRequested()';
}


}




/// @nodoc


class LoadNextPage implements SearchEvent {
  const LoadNextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadNextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.loadNextPage()';
}


}




/// @nodoc
mixin _$SearchState {

 MovieTitle get title; int get page; bool get isLoading; bool get hasReachedEnd; List<Movie> get results; Option<Failure<dynamic>> get failureOption;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.title, title) || other.title == title)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasReachedEnd, hasReachedEnd) || other.hasReachedEnd == hasReachedEnd)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.failureOption, failureOption) || other.failureOption == failureOption));
}


@override
int get hashCode => Object.hash(runtimeType,title,page,isLoading,hasReachedEnd,const DeepCollectionEquality().hash(results),failureOption);

@override
String toString() {
  return 'SearchState(title: $title, page: $page, isLoading: $isLoading, hasReachedEnd: $hasReachedEnd, results: $results, failureOption: $failureOption)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 MovieTitle title, int page, bool isLoading, bool hasReachedEnd, List<Movie> results, Option<Failure<dynamic>> failureOption
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? page = null,Object? isLoading = null,Object? hasReachedEnd = null,Object? results = null,Object? failureOption = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MovieTitle,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasReachedEnd: null == hasReachedEnd ? _self.hasReachedEnd : hasReachedEnd // ignore: cast_nullable_to_non_nullable
as bool,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Movie>,failureOption: null == failureOption ? _self.failureOption : failureOption // ignore: cast_nullable_to_non_nullable
as Option<Failure<dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MovieTitle title,  int page,  bool isLoading,  bool hasReachedEnd,  List<Movie> results,  Option<Failure<dynamic>> failureOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.title,_that.page,_that.isLoading,_that.hasReachedEnd,_that.results,_that.failureOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MovieTitle title,  int page,  bool isLoading,  bool hasReachedEnd,  List<Movie> results,  Option<Failure<dynamic>> failureOption)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.title,_that.page,_that.isLoading,_that.hasReachedEnd,_that.results,_that.failureOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MovieTitle title,  int page,  bool isLoading,  bool hasReachedEnd,  List<Movie> results,  Option<Failure<dynamic>> failureOption)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.title,_that.page,_that.isLoading,_that.hasReachedEnd,_that.results,_that.failureOption);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({required this.title, required this.page, required this.isLoading, required this.hasReachedEnd, required final  List<Movie> results, required this.failureOption}): _results = results;
  

@override final  MovieTitle title;
@override final  int page;
@override final  bool isLoading;
@override final  bool hasReachedEnd;
 final  List<Movie> _results;
@override List<Movie> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  Option<Failure<dynamic>> failureOption;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.title, title) || other.title == title)&&(identical(other.page, page) || other.page == page)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasReachedEnd, hasReachedEnd) || other.hasReachedEnd == hasReachedEnd)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.failureOption, failureOption) || other.failureOption == failureOption));
}


@override
int get hashCode => Object.hash(runtimeType,title,page,isLoading,hasReachedEnd,const DeepCollectionEquality().hash(_results),failureOption);

@override
String toString() {
  return 'SearchState(title: $title, page: $page, isLoading: $isLoading, hasReachedEnd: $hasReachedEnd, results: $results, failureOption: $failureOption)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 MovieTitle title, int page, bool isLoading, bool hasReachedEnd, List<Movie> results, Option<Failure<dynamic>> failureOption
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? page = null,Object? isLoading = null,Object? hasReachedEnd = null,Object? results = null,Object? failureOption = null,}) {
  return _then(_SearchState(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MovieTitle,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasReachedEnd: null == hasReachedEnd ? _self.hasReachedEnd : hasReachedEnd // ignore: cast_nullable_to_non_nullable
as bool,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Movie>,failureOption: null == failureOption ? _self.failureOption : failureOption // ignore: cast_nullable_to_non_nullable
as Option<Failure<dynamic>>,
  ));
}


}

// dart format on
