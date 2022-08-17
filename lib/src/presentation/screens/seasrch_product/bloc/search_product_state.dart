import 'package:equatable/equatable.dart';

class SearchProductState {
  // final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  const SearchProductState({
    // required this.isSubmitting,
    required this.isSuccess,
    required this.isFailure,
  });

  factory SearchProductState.empty() {
    return const SearchProductState(
      // isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory SearchProductState.loading() {
    return const SearchProductState(
      // isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  // @override
  // String toString() => 'SearchProductState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure)';
}
