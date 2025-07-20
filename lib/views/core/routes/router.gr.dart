// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i5;
import 'package:movie_search_challenge/domain/core/validation/value_objects/movie_id.dart'
    as _i4;
import 'package:movie_search_challenge/views/details/pages/details_page.dart'
    as _i1;
import 'package:movie_search_challenge/views/search/pages/search_page.dart'
    as _i2;

/// generated route for
/// [_i1.DetailsPage]
class DetailsRoute extends _i3.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    required _i4.MovieId imdbId,
    _i5.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         DetailsRoute.name,
         args: DetailsRouteArgs(imdbId: imdbId, key: key),
         initialChildren: children,
       );

  static const String name = 'DetailsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailsRouteArgs>();
      return _i1.DetailsPage(imdbId: args.imdbId, key: args.key);
    },
  );
}

class DetailsRouteArgs {
  const DetailsRouteArgs({required this.imdbId, this.key});

  final _i4.MovieId imdbId;

  final _i5.Key? key;

  @override
  String toString() {
    return 'DetailsRouteArgs{imdbId: $imdbId, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DetailsRouteArgs) return false;
    return imdbId == other.imdbId && key == other.key;
  }

  @override
  int get hashCode => imdbId.hashCode ^ key.hashCode;
}

/// generated route for
/// [_i2.SearchPage]
class SearchRoute extends _i3.PageRouteInfo<void> {
  const SearchRoute({List<_i3.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.SearchPage();
    },
  );
}
