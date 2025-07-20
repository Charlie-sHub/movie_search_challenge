# Flutter Movie Search Challenge

I tackle challenges by working **layer by layer**, from core business rules out to the UI, so each piece is cleanly separated, validated, and easy to test. I start with Value Objects and Entities, then build my BLoCs, wire up data repositories, and finally compose the widgets, only touching the UI once the logic beneath it is rock‑solid.

---

## Domain
- **Value Objects** (`MovieTitle`, `MovieId`, etc.) encapsulate all validation via `Either<Failure, T>`.
- A sealed `Failure<T>` type covers invalid input, server/cache errors, and unexpected issues, plus an `errorString` extension for user‑friendly messages.
- The `Movie` entity aggregates value objects and exposes a `failureOption` combining all validations.

## Application
- **SearchBloc** manages the search form, results list, pagination, loading/error states, and a `showErrorMessages` flag.
- **DetailsWatcherBloc** handles a single `.initialized(MovieId)` event, emitting load‑in‑progress, success, or failure states.
- Both blocs use `freezed` unions for their events and states, and guard against invalid VOs before proceeding.

## Data
- **OmdbApiClient** is a simple HTTP wrapper that throws on network or API errors.
- **MovieDto** (Freezed + `fromJson`/`toDomain`) keeps the client code agnostic about domain logic.
- **Repository implementations** catch exceptions, validate VOs up‑front, and return `Either<Failure, …>` to the blocs.

## Views
- **AutoRoute** for type‑safe, parameterized navigation (`SearchPage` → `DetailsPage`).
- **SearchPage** hosts a `SearchForm` (input + validator) and a `SearchResultsStateView` (empty/loading/error/list).
- **DetailsPage** provides its bloc, fires the initial load, and renders a `DetailsStateView` (loading/error/details).
- Pure presentation widgets (`MoviesListView`, `MovieDetailsWidget`) are only used in the success paths, keeping state handling out of their code.
