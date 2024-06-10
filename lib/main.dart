import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logging/logging.dart';
import 'package:mike_project/src/themes/light_theme_constants.dart';

import 'src/core/routes/router_base.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();
  runApp(const ProviderScope(child: MyApp()));
}

final rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
final log = Logger('Mike App');

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          textTheme: lightTextTheme,
        ),
        routeInformationProvider: goRouter.routeInformationProvider,
        routeInformationParser: goRouter.routeInformationParser,
        routerDelegate: goRouter.routerDelegate,
        restorationScopeId: 'app',
        scaffoldMessengerKey: rootScaffoldMessengerKey,
      ),
    );
  }
}
