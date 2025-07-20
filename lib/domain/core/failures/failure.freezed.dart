// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure<$T>()';
}


}

/// @nodoc
class $FailureCopyWith<T,$Res>  {
$FailureCopyWith(Failure<T> _, $Res Function(Failure<T>) __);
}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns<T> on Failure<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmptyString<T> value)?  emptyString,TResult Function( StringExceedsLength<T> value)?  stringExceedsLength,TResult Function( InvalidYear<T> value)?  invalidYear,TResult Function( InvalidMovieId<T> value)?  invalidMovieId,TResult Function( InvalidUrl<T> value)?  invalidUrl,TResult Function( ServerError<T> value)?  serverError,TResult Function( CacheError<T> value)?  cacheError,TResult Function( UnexpectedError<T> value)?  unexpectedError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmptyString() when emptyString != null:
return emptyString(_that);case StringExceedsLength() when stringExceedsLength != null:
return stringExceedsLength(_that);case InvalidYear() when invalidYear != null:
return invalidYear(_that);case InvalidMovieId() when invalidMovieId != null:
return invalidMovieId(_that);case InvalidUrl() when invalidUrl != null:
return invalidUrl(_that);case ServerError() when serverError != null:
return serverError(_that);case CacheError() when cacheError != null:
return cacheError(_that);case UnexpectedError() when unexpectedError != null:
return unexpectedError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmptyString<T> value)  emptyString,required TResult Function( StringExceedsLength<T> value)  stringExceedsLength,required TResult Function( InvalidYear<T> value)  invalidYear,required TResult Function( InvalidMovieId<T> value)  invalidMovieId,required TResult Function( InvalidUrl<T> value)  invalidUrl,required TResult Function( ServerError<T> value)  serverError,required TResult Function( CacheError<T> value)  cacheError,required TResult Function( UnexpectedError<T> value)  unexpectedError,}){
final _that = this;
switch (_that) {
case EmptyString():
return emptyString(_that);case StringExceedsLength():
return stringExceedsLength(_that);case InvalidYear():
return invalidYear(_that);case InvalidMovieId():
return invalidMovieId(_that);case InvalidUrl():
return invalidUrl(_that);case ServerError():
return serverError(_that);case CacheError():
return cacheError(_that);case UnexpectedError():
return unexpectedError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmptyString<T> value)?  emptyString,TResult? Function( StringExceedsLength<T> value)?  stringExceedsLength,TResult? Function( InvalidYear<T> value)?  invalidYear,TResult? Function( InvalidMovieId<T> value)?  invalidMovieId,TResult? Function( InvalidUrl<T> value)?  invalidUrl,TResult? Function( ServerError<T> value)?  serverError,TResult? Function( CacheError<T> value)?  cacheError,TResult? Function( UnexpectedError<T> value)?  unexpectedError,}){
final _that = this;
switch (_that) {
case EmptyString() when emptyString != null:
return emptyString(_that);case StringExceedsLength() when stringExceedsLength != null:
return stringExceedsLength(_that);case InvalidYear() when invalidYear != null:
return invalidYear(_that);case InvalidMovieId() when invalidMovieId != null:
return invalidMovieId(_that);case InvalidUrl() when invalidUrl != null:
return invalidUrl(_that);case ServerError() when serverError != null:
return serverError(_that);case CacheError() when cacheError != null:
return cacheError(_that);case UnexpectedError() when unexpectedError != null:
return unexpectedError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String failedValue)?  emptyString,TResult Function( String failedValue,  int maxLength)?  stringExceedsLength,TResult Function( T failedValue)?  invalidYear,TResult Function( String failedValue)?  invalidMovieId,TResult Function( String failedValue)?  invalidUrl,TResult Function( String errorMessage)?  serverError,TResult Function( String errorMessage)?  cacheError,TResult Function( String errorMessage)?  unexpectedError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmptyString() when emptyString != null:
return emptyString(_that.failedValue);case StringExceedsLength() when stringExceedsLength != null:
return stringExceedsLength(_that.failedValue,_that.maxLength);case InvalidYear() when invalidYear != null:
return invalidYear(_that.failedValue);case InvalidMovieId() when invalidMovieId != null:
return invalidMovieId(_that.failedValue);case InvalidUrl() when invalidUrl != null:
return invalidUrl(_that.failedValue);case ServerError() when serverError != null:
return serverError(_that.errorMessage);case CacheError() when cacheError != null:
return cacheError(_that.errorMessage);case UnexpectedError() when unexpectedError != null:
return unexpectedError(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String failedValue)  emptyString,required TResult Function( String failedValue,  int maxLength)  stringExceedsLength,required TResult Function( T failedValue)  invalidYear,required TResult Function( String failedValue)  invalidMovieId,required TResult Function( String failedValue)  invalidUrl,required TResult Function( String errorMessage)  serverError,required TResult Function( String errorMessage)  cacheError,required TResult Function( String errorMessage)  unexpectedError,}) {final _that = this;
switch (_that) {
case EmptyString():
return emptyString(_that.failedValue);case StringExceedsLength():
return stringExceedsLength(_that.failedValue,_that.maxLength);case InvalidYear():
return invalidYear(_that.failedValue);case InvalidMovieId():
return invalidMovieId(_that.failedValue);case InvalidUrl():
return invalidUrl(_that.failedValue);case ServerError():
return serverError(_that.errorMessage);case CacheError():
return cacheError(_that.errorMessage);case UnexpectedError():
return unexpectedError(_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String failedValue)?  emptyString,TResult? Function( String failedValue,  int maxLength)?  stringExceedsLength,TResult? Function( T failedValue)?  invalidYear,TResult? Function( String failedValue)?  invalidMovieId,TResult? Function( String failedValue)?  invalidUrl,TResult? Function( String errorMessage)?  serverError,TResult? Function( String errorMessage)?  cacheError,TResult? Function( String errorMessage)?  unexpectedError,}) {final _that = this;
switch (_that) {
case EmptyString() when emptyString != null:
return emptyString(_that.failedValue);case StringExceedsLength() when stringExceedsLength != null:
return stringExceedsLength(_that.failedValue,_that.maxLength);case InvalidYear() when invalidYear != null:
return invalidYear(_that.failedValue);case InvalidMovieId() when invalidMovieId != null:
return invalidMovieId(_that.failedValue);case InvalidUrl() when invalidUrl != null:
return invalidUrl(_that.failedValue);case ServerError() when serverError != null:
return serverError(_that.errorMessage);case CacheError() when cacheError != null:
return cacheError(_that.errorMessage);case UnexpectedError() when unexpectedError != null:
return unexpectedError(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class EmptyString<T> implements Failure<T> {
  const EmptyString({required this.failedValue});
  

 final  String failedValue;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyStringCopyWith<T, EmptyString<T>> get copyWith => _$EmptyStringCopyWithImpl<T, EmptyString<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyString<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'Failure<$T>.emptyString(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $EmptyStringCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $EmptyStringCopyWith(EmptyString<T> value, $Res Function(EmptyString<T>) _then) = _$EmptyStringCopyWithImpl;
@useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$EmptyStringCopyWithImpl<T,$Res>
    implements $EmptyStringCopyWith<T, $Res> {
  _$EmptyStringCopyWithImpl(this._self, this._then);

  final EmptyString<T> _self;
  final $Res Function(EmptyString<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(EmptyString<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StringExceedsLength<T> implements Failure<T> {
  const StringExceedsLength({required this.failedValue, required this.maxLength});
  

 final  String failedValue;
 final  int maxLength;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StringExceedsLengthCopyWith<T, StringExceedsLength<T>> get copyWith => _$StringExceedsLengthCopyWithImpl<T, StringExceedsLength<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StringExceedsLength<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue,maxLength);

@override
String toString() {
  return 'Failure<$T>.stringExceedsLength(failedValue: $failedValue, maxLength: $maxLength)';
}


}

/// @nodoc
abstract mixin class $StringExceedsLengthCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $StringExceedsLengthCopyWith(StringExceedsLength<T> value, $Res Function(StringExceedsLength<T>) _then) = _$StringExceedsLengthCopyWithImpl;
@useResult
$Res call({
 String failedValue, int maxLength
});




}
/// @nodoc
class _$StringExceedsLengthCopyWithImpl<T,$Res>
    implements $StringExceedsLengthCopyWith<T, $Res> {
  _$StringExceedsLengthCopyWithImpl(this._self, this._then);

  final StringExceedsLength<T> _self;
  final $Res Function(StringExceedsLength<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failedValue = null,Object? maxLength = null,}) {
  return _then(StringExceedsLength<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,maxLength: null == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class InvalidYear<T> implements Failure<T> {
  const InvalidYear({required this.failedValue});
  

 final  T failedValue;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidYearCopyWith<T, InvalidYear<T>> get copyWith => _$InvalidYearCopyWithImpl<T, InvalidYear<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidYear<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'Failure<$T>.invalidYear(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidYearCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $InvalidYearCopyWith(InvalidYear<T> value, $Res Function(InvalidYear<T>) _then) = _$InvalidYearCopyWithImpl;
@useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidYearCopyWithImpl<T,$Res>
    implements $InvalidYearCopyWith<T, $Res> {
  _$InvalidYearCopyWithImpl(this._self, this._then);

  final InvalidYear<T> _self;
  final $Res Function(InvalidYear<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidYear<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidMovieId<T> implements Failure<T> {
  const InvalidMovieId({required this.failedValue});
  

 final  String failedValue;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidMovieIdCopyWith<T, InvalidMovieId<T>> get copyWith => _$InvalidMovieIdCopyWithImpl<T, InvalidMovieId<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidMovieId<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'Failure<$T>.invalidMovieId(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidMovieIdCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $InvalidMovieIdCopyWith(InvalidMovieId<T> value, $Res Function(InvalidMovieId<T>) _then) = _$InvalidMovieIdCopyWithImpl;
@useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$InvalidMovieIdCopyWithImpl<T,$Res>
    implements $InvalidMovieIdCopyWith<T, $Res> {
  _$InvalidMovieIdCopyWithImpl(this._self, this._then);

  final InvalidMovieId<T> _self;
  final $Res Function(InvalidMovieId<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(InvalidMovieId<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InvalidUrl<T> implements Failure<T> {
  const InvalidUrl({required this.failedValue});
  

 final  String failedValue;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidUrlCopyWith<T, InvalidUrl<T>> get copyWith => _$InvalidUrlCopyWithImpl<T, InvalidUrl<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidUrl<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'Failure<$T>.invalidUrl(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidUrlCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $InvalidUrlCopyWith(InvalidUrl<T> value, $Res Function(InvalidUrl<T>) _then) = _$InvalidUrlCopyWithImpl;
@useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$InvalidUrlCopyWithImpl<T,$Res>
    implements $InvalidUrlCopyWith<T, $Res> {
  _$InvalidUrlCopyWithImpl(this._self, this._then);

  final InvalidUrl<T> _self;
  final $Res Function(InvalidUrl<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(InvalidUrl<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ServerError<T> implements Failure<T> {
  const ServerError({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerErrorCopyWith<T, ServerError<T>> get copyWith => _$ServerErrorCopyWithImpl<T, ServerError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'Failure<$T>.serverError(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ServerErrorCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $ServerErrorCopyWith(ServerError<T> value, $Res Function(ServerError<T>) _then) = _$ServerErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$ServerErrorCopyWithImpl<T,$Res>
    implements $ServerErrorCopyWith<T, $Res> {
  _$ServerErrorCopyWithImpl(this._self, this._then);

  final ServerError<T> _self;
  final $Res Function(ServerError<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(ServerError<T>(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CacheError<T> implements Failure<T> {
  const CacheError({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheErrorCopyWith<T, CacheError<T>> get copyWith => _$CacheErrorCopyWithImpl<T, CacheError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheError<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'Failure<$T>.cacheError(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CacheErrorCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $CacheErrorCopyWith(CacheError<T> value, $Res Function(CacheError<T>) _then) = _$CacheErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$CacheErrorCopyWithImpl<T,$Res>
    implements $CacheErrorCopyWith<T, $Res> {
  _$CacheErrorCopyWithImpl(this._self, this._then);

  final CacheError<T> _self;
  final $Res Function(CacheError<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(CacheError<T>(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnexpectedError<T> implements Failure<T> {
  const UnexpectedError({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedErrorCopyWith<T, UnexpectedError<T>> get copyWith => _$UnexpectedErrorCopyWithImpl<T, UnexpectedError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedError<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'Failure<$T>.unexpectedError(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $UnexpectedErrorCopyWith<T,$Res> implements $FailureCopyWith<T, $Res> {
  factory $UnexpectedErrorCopyWith(UnexpectedError<T> value, $Res Function(UnexpectedError<T>) _then) = _$UnexpectedErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$UnexpectedErrorCopyWithImpl<T,$Res>
    implements $UnexpectedErrorCopyWith<T, $Res> {
  _$UnexpectedErrorCopyWithImpl(this._self, this._then);

  final UnexpectedError<T> _self;
  final $Res Function(UnexpectedError<T>) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(UnexpectedError<T>(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
