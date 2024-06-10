import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mike_project/src/core/routes/not_found.dart';
import 'package:mike_project/src/features/onboarding/onboarding.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'nav_observer.dart';

part 'router_base.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) => GoRouter(
        routes: $appRoutes,
        initialLocation: '/onboarding',
        errorBuilder: (context, state) => NotFoundScreen(
              goHome: () => const OnboardingViewRoute().go(context),
              error: state.error!,
            ).build(context),
        observers: <NavigatorObserver>[
          NavObserver(),
        ]);


        @TypedGoRoute<OnboardingViewRoute>(path: '/onboarding')
class OnboardingViewRoute extends GoRouteData {
  const OnboardingViewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>const  OnboardingView(
        // goToGetStarted: () => const GetStartedViewRoute().push(context),
      );
}