import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_search_challenge/data/core/clients/omdb_api_client.dart';

/// Injectable module to provide API client dependencies
@module
abstract class ClientModule {
  /// Load OMDb API key from .env
  @Named('omdbApiKey')
  @singleton
  String get omdbApiKey => dotenv.env['OMDB_API_KEY']!;

  /// Provide OmdbApiClient configured with the named API key
  @singleton
  OmdbApiClient omdbApiClient(
    @Named('omdbApiKey') String apiKey,
  ) => OmdbApiClient(apiKey: apiKey);
}
