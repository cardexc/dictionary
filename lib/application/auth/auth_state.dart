part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;

  const factory AuthState.mainNavigation(UniqueId id) = MainNavigation;

  const factory AuthState.onBoardingNavigation(UniqueId id) = OnBoardingNavigation;

  const factory AuthState.signInNavigation(UniqueId id) = SignInNavigation;
}
