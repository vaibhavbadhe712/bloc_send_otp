import 'package:basic_intigration_with_bloc/app_config.dart';
import 'package:basic_intigration_with_bloc/constants/provider.dart';
import 'package:basic_intigration_with_bloc/model/api_base_model.dart';
import 'package:basic_intigration_with_bloc/routes/route.dart';
import 'package:basic_intigration_with_bloc/utils/lobic/sendotp/sendotp_cubit%20.dart';
import 'package:basic_intigration_with_bloc/utils/preferences/local_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'constants/api_endpoint.dart';

void main({String? env}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageUtils.init();
  await GetStorage.init();
  final appConfig = await AppConfig().forEnvironment(env);
  runApp(MyApp(
    config: appConfig,
  ));
}

late ApiEndPoints apiEndpoints;

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.config,
    // required this.sharedPreferences,
  });

  final ApiBaseModel config;
  // final SharedPreferences sharedPreferences;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    apiEndpoints = ApiEndPoints(apiBaseModel: widget.config);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appRoutes = Routes();
    return ScreenUtilInit(
      designSize: const Size(360, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return BlocProvider(
          create: (context) => SendOtpCubit(),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: appRoutes.router.routeInformationParser,
            routeInformationProvider: appRoutes.router.routeInformationProvider,
            routerDelegate: appRoutes.router.routerDelegate,
            // themeAnimationDuration: Duration(seconds: 2),
            theme: ThemeData(
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
