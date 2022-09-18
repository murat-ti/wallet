import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'core/navigation/navigation_route.dart';
import 'core/navigation/navigation_service.dart';
import 'ui/screens/home.dart';
import 'ui/shared/utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ApplicationColors.scaffoldBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: ApplicationColors.textColor,
          displayColor: ApplicationColors.textColor,
        ),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
        tabBarTheme: Theme.of(context).tabBarTheme.copyWith(
          labelColor: ApplicationColors.textColor,
          unselectedLabelColor: ApplicationColors.textColor,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ApplicationColors.tabBarColor),
        ),
        iconTheme: Theme.of(context).iconTheme.copyWith(
          color: ApplicationColors.textColor,
        )
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      home: const HomePage(),
    );
  }
}
