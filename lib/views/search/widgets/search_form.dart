import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search_challenge/application/search/search_bloc.dart';
import 'package:movie_search_challenge/domain/core/failures/failure.dart';

/// Form with text input and search button
class SearchForm extends StatelessWidget {
  /// Constructor for [SearchForm]
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<SearchBloc, SearchState>(
    buildWhen: _buildWhen,
    builder: (context, state) => Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Movie Title',
                  hintText: 'e.g., The Handmaiden',
                ),
                validator: (_) => _queryValidator(context),
                onChanged: (value) => context.read<SearchBloc>().add(
                  SearchEvent.queryChanged(title: value),
                ),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () => context.read<SearchBloc>().add(
                const SearchEvent.searchRequested(),
              ),
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    ),
  );

  String? _queryValidator(BuildContext context) =>
      context.read<SearchBloc>().state.title.value.fold(
        (failure) => failure.errorString,
        (_) => null,
      );

  bool _buildWhen(_, SearchState current) =>
      current.title.isValid() || !current.title.isValid();
}
