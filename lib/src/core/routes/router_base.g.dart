// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_base.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $onboardingViewRoute,
    ];

RouteBase get $onboardingViewRoute => GoRouteData.$route(
      path: '/onboarding',
      factory: $OnboardingViewRouteExtension._fromState,
    );

extension $OnboardingViewRouteExtension on OnboardingViewRoute {
  static OnboardingViewRoute _fromState(GoRouterState state) =>
      const OnboardingViewRoute();

  String get location => GoRouteData.$location(
        '/onboarding',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'248e651ba7bdca66f63514bba9634e1a97351b0b';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = Provider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
