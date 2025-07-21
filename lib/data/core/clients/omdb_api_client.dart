import 'dart:convert';
import 'package:http/http.dart' as http;

/// Client for OMDb API
class OmdbApiClient {
  /// Constructor for [OmdbApiClient]
  OmdbApiClient({
    required this.apiKey,
    http.Client? httpClient,
    String baseUrl = 'http://www.omdbapi.com/',
  }) : _http = httpClient ?? http.Client(),
       _baseUrl = baseUrl;

  final http.Client _http;
  final String _baseUrl;

  /// API key for OMDb API
  final String apiKey;

  /// Search movies by title and page
  /// Throws [Exception] on network or API errors
  Future<Map<String, dynamic>> searchRaw({
    required String title,
    required int page,
  }) async {
    final uri = Uri.parse(_baseUrl).replace(
      queryParameters: {
        'apikey': apiKey,
        's': title,
        'page': page.toString(),
      },
    );

    final response = await _http.get(uri);

    if (response.statusCode != 200) {
      throw Exception('HTTP ${response.statusCode}');
    } else {
      final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
      if (jsonMap['Response'] == 'False') {
        final errorMessage = jsonMap['Error'] as String? ?? 'Unknown error';
        throw Exception(errorMessage);
      } else {
        return jsonMap;
      }
    }
  }

  /// Get full details by IMDb id
  /// Throws [Exception] on network or API errors
  Future<Map<String, dynamic>> getDetailsRaw({
    required String id,
  }) async {
    final uri = Uri.parse(_baseUrl).replace(
      queryParameters: {
        'apikey': apiKey,
        'i': id,
        'plot': 'full',
      },
    );

    final response = await _http.get(uri);
    if (response.statusCode != 200) {
      throw Exception('HTTP ${response.statusCode}');
    } else {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['Response'] == 'False') {
        throw Exception(json['Error'] as String);
      } else {
        return json;
      }
    }
  }
}
