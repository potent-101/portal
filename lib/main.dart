import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pleasework/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      //systemStatusBarContrastEnforced: true,
      systemNavigationBarColor: Colors.transparent,
      // systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      //statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  runApp(Portal());
}

class Portal extends StatelessWidget {
  Portal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => "portal",
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteGenerator.splashScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}
