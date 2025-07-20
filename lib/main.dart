import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_search_challenge/injection.dart';
import 'package:movie_search_challenge/views/core/widgets/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  configureDependencies('prod');
  runApp(AppWidget());
}
