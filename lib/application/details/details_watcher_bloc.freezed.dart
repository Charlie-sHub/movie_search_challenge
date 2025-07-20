// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailsWatcherEvent {

 MovieId get id;
/// Create a copy of DetailsWatcherEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsWatcherEventCopyWith<DetailsWatcherEvent> get copyWith => _$DetailsWatcherEventCopyWithImpl<DetailsWatcherEvent>(this as DetailsWatcherEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsWatcherEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DetailsWatcherEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $DetailsWatcherEventCopyWith<$Res>  {
  factory $DetailsWatcherEventCopyWith(DetailsWatcherEvent value, $Res Function(DetailsWatcherEvent) _then) = _$DetailsWatcherEventCopyWithImpl;
@useResult
$Res call({
 MovieId id
});




}
/// @nodoc
class _$DetailsWatcherEventCopyWithImpl<$Res>
    implements $DetailsWatcherEventCopyWith<$Res> {
  _$DetailsWatcherEventCopyWithImpl(this._self, this._then);

  final DetailsWatcherEvent _self;
  final $Res Function(DetailsWatcherEvent) _then;

/// Create a copy of DetailsWatcherEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as MovieId,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailsWatcherEvent].
extension DetailsWatcherEventPatterns on DetailsWatcherEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DetailsWatcherInitialized value)?  initialized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DetailsWatcherInitialized() when initialized != null:
return initialized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DetailsWatcherInitialized value)  initialized,}){
final _that = this;
switch (_that) {
case DetailsWatcherInitialized():
return initialized(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DetailsWatcherInitialized value)?  initialized,}){
final _that = this;
switch (_that) {
case DetailsWatcherInitialized() when initialized != null:
return initialized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MovieId id)?  initialized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DetailsWatcherInitialized() when initialized != null:
return initialized(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MovieId id)  initialized,}) {final _that = this;
switch (_that) {
case DetailsWatcherInitialized():
return initialized(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MovieId id)?  initialized,}) {final _that = this;
switch (_that) {
case DetailsWatcherInitialized() when initialized != null:
return initialized(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class DetailsWatcherInitialized implements DetailsWatcherEvent {
  const DetailsWatcherInitialized({required this.id});
  

@override final  MovieId id;

/// Create a copy of DetailsWatcherEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsWatcherInitializedCopyWith<DetailsWatcherInitialized> get copyWith => _$DetailsWatcherInitializedCopyWithImpl<DetailsWatcherInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsWatcherInitialized&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DetailsWatcherEvent.initialized(id: $id)';
}


}

/// @nodoc
abstract mixin class $DetailsWatcherInitializedCopyWith<$Res> implements $DetailsWatcherEventCopyWith<$Res> {
  factory $DetailsWatcherInitializedCopyWith(DetailsWatcherInitialized value, $Res Function(DetailsWatcherInitialized) _then) = _$DetailsWatcherInitializedCopyWithImpl;
@override @useResult
$Res call({
 MovieId id
});




}
/// @nodoc
class _$DetailsWatcherInitializedCopyWithImpl<$Res>
    implements $DetailsWatcherInitializedCopyWith<$Res> {
  _$DetailsWatcherInitializedCopyWithImpl(this._self, this._then);

  final DetailsWatcherInitialized _self;
  final $Res Function(DetailsWatcherInitialized) _then;

/// Create a copy of DetailsWatcherEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DetailsWatcherInitialized(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as MovieId,
  ));
}


}

/// @nodoc
mixin _$DetailsWatcherState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsWatcherState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailsWatcherState()';
}


}

/// @nodoc
class $DetailsWatcherStateCopyWith<$Res>  {
$DetailsWatcherStateCopyWith(DetailsWatcherState _, $Res Function(DetailsWatcherState) __);
}


/// Adds pattern-matching-related methods to [DetailsWatcherState].
extension DetailsWatcherStatePatterns on DetailsWatcherState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DetailsWatcherInitial value)?  initial,TResult Function( DetailsWatcherLoadInProgress value)?  loadInProgress,TResult Function( DetailsWatcherLoadSuccess value)?  loadSuccess,TResult Function( DetailsWatcherLoadFailure value)?  loadFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DetailsWatcherInitial() when initial != null:
return initial(_that);case DetailsWatcherLoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case DetailsWatcherLoadSuccess() when loadSuccess != null:
return loadSuccess(_that);case DetailsWatcherLoadFailure() when loadFailure != null:
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DetailsWatcherInitial value)  initial,required TResult Function( DetailsWatcherLoadInProgress value)  loadInProgress,required TResult Function( DetailsWatcherLoadSuccess value)  loadSuccess,required TResult Function( DetailsWatcherLoadFailure value)  loadFailure,}){
final _that = this;
switch (_that) {
case DetailsWatcherInitial():
return initial(_that);case DetailsWatcherLoadInProgress():
return loadInProgress(_that);case DetailsWatcherLoadSuccess():
return loadSuccess(_that);case DetailsWatcherLoadFailure():
return loadFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DetailsWatcherInitial value)?  initial,TResult? Function( DetailsWatcherLoadInProgress value)?  loadInProgress,TResult? Function( DetailsWatcherLoadSuccess value)?  loadSuccess,TResult? Function( DetailsWatcherLoadFailure value)?  loadFailure,}){
final _that = this;
switch (_that) {
case DetailsWatcherInitial() when initial != null:
return initial(_that);case DetailsWatcherLoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case DetailsWatcherLoadSuccess() when loadSuccess != null:
return loadSuccess(_that);case DetailsWatcherLoadFailure() when loadFailure != null:
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadInProgress,TResult Function( Movie movie)?  loadSuccess,TResult Function( Failure<dynamic> failure)?  loadFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DetailsWatcherInitial() when initial != null:
return initial();case DetailsWatcherLoadInProgress() when loadInProgress != null:
return loadInProgress();case DetailsWatcherLoadSuccess() when loadSuccess != null:
return loadSuccess(_that.movie);case DetailsWatcherLoadFailure() when loadFailure != null:
return loadFailure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadInProgress,required TResult Function( Movie movie)  loadSuccess,required TResult Function( Failure<dynamic> failure)  loadFailure,}) {final _that = this;
switch (_that) {
case DetailsWatcherInitial():
return initial();case DetailsWatcherLoadInProgress():
return loadInProgress();case DetailsWatcherLoadSuccess():
return loadSuccess(_that.movie);case DetailsWatcherLoadFailure():
return loadFailure(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadInProgress,TResult? Function( Movie movie)?  loadSuccess,TResult? Function( Failure<dynamic> failure)?  loadFailure,}) {final _that = this;
switch (_that) {
case DetailsWatcherInitial() when initial != null:
return initial();case DetailsWatcherLoadInProgress() when loadInProgress != null:
return loadInProgress();case DetailsWatcherLoadSuccess() when loadSuccess != null:
return loadSuccess(_that.movie);case DetailsWatcherLoadFailure() when loadFailure != null:
return loadFailure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class DetailsWatcherInitial implements DetailsWatcherState {
  const DetailsWatcherInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsWatcherInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailsWatcherState.initial()';
}


}




/// @nodoc


class DetailsWatcherLoadInProgress implements DetailsWatcherState {
  const DetailsWatcherLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsWatcherLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailsWatcherState.loadInProgress()';
}


}




/// @nodoc


class DetailsWatcherLoadSuccess implements DetailsWatcherState {
  const DetailsWatcherLoadSuccess(this.movie);
  

 final  Movie movie;

/// Create a copy of DetailsWatcherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsWatcherLoadSuccessCopyWith<DetailsWatcherLoadSuccess> get copyWith => _$DetailsWatcherLoadSuccessCopyWithImpl<DetailsWatcherLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsWatcherLoadSuccess&&(identical(other.movie, movie) || other.movie == movie));
}


@override
int get hashCode => Object.hash(runtimeType,movie);

@override
String toString() {
  return 'DetailsWatcherState.loadSuccess(movie: $movie)';
}


}

/// @nodoc
abstract mixin class $DetailsWatcherLoadSuccessCopyWith<$Res> implements $DetailsWatcherStateCopyWith<$Res> {
  factory $DetailsWatcherLoadSuccessCopyWith(DetailsWatcherLoadSuccess value, $Res Function(DetailsWatcherLoadSuccess) _then) = _$DetailsWatcherLoadSuccessCopyWithImpl;
@useResult
$Res call({
 Movie movie
});


$MovieCopyWith<$Res> get movie;

}
/// @nodoc
class _$DetailsWatcherLoadSuccessCopyWithImpl<$Res>
    implements $DetailsWatcherLoadSuccessCopyWith<$Res> {
  _$DetailsWatcherLoadSuccessCopyWithImpl(this._self, this._then);

  final DetailsWatcherLoadSuccess _self;
  final $Res Function(DetailsWatcherLoadSuccess) _then;

/// Create a copy of DetailsWatcherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movie = null,}) {
  return _then(DetailsWatcherLoadSuccess(
null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as Movie,
  ));
}

/// Create a copy of DetailsWatcherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieCopyWith<$Res> get movie {
  
  return $MovieCopyWith<$Res>(_self.movie, (value) {
    return _then(_self.copyWith(movie: value));
  });
}
}

/// @nodoc


class DetailsWatcherLoadFailure implements DetailsWatcherState {
  const DetailsWatcherLoadFailure(this.failure);
  

 final  Failure<dynamic> failure;

/// Create a copy of DetailsWatcherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsWatcherLoadFailureCopyWith<DetailsWatcherLoadFailure> get copyWith => _$DetailsWatcherLoadFailureCopyWithImpl<DetailsWatcherLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsWatcherLoadFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'DetailsWatcherState.loadFailure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $DetailsWatcherLoadFailureCopyWith<$Res> implements $DetailsWatcherStateCopyWith<$Res> {
  factory $DetailsWatcherLoadFailureCopyWith(DetailsWatcherLoadFailure value, $Res Function(DetailsWatcherLoadFailure) _then) = _$DetailsWatcherLoadFailureCopyWithImpl;
@useResult
$Res call({
 Failure<dynamic> failure
});


$FailureCopyWith<dynamic, $Res> get failure;

}
/// @nodoc
class _$DetailsWatcherLoadFailureCopyWithImpl<$Res>
    implements $DetailsWatcherLoadFailureCopyWith<$Res> {
  _$DetailsWatcherLoadFailureCopyWithImpl(this._self, this._then);

  final DetailsWatcherLoadFailure _self;
  final $Res Function(DetailsWatcherLoadFailure) _then;

/// Create a copy of DetailsWatcherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(DetailsWatcherLoadFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure<dynamic>,
  ));
}

/// Create a copy of DetailsWatcherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<dynamic, $Res> get failure {
  
  return $FailureCopyWith<dynamic, $Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
