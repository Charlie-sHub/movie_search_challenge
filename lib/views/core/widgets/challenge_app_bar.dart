import 'package:flutter/material.dart';

/// Custom app bar for the challenge app
class ChallengeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Constructor for [ChallengeAppBar]
  const ChallengeAppBar({
    required this.title,
    super.key,
  });

  /// Title of the app bar
  final String title;

  @override
  Widget build(BuildContext context) => AppBar(
    title: Text(title),
    centerTitle: true,
    elevation: 5,
    shadowColor: Colors.black,
    backgroundColor: Colors.purple[100],
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
