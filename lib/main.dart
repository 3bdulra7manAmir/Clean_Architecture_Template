import 'package:clean_arc/Config/router/app_router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => DevicePreview(
        builder: (context) => const MainApp(),
        enabled: true,
      ),
    ),
  );
}

class MainApp extends StatelessWidget
{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return DevicePreview(
      enabled: false,
      builder: (context) => MaterialApp.router(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        routerConfig: AppRouter.router,

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
