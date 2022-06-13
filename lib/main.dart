import 'package:flutter/material.dart';
import 'package:pleasework/routes.dart';

void main() {
  runApp( Portal());
}

class Portal extends StatelessWidget{
   Portal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context)=> "portal",
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteGenerator.splashScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}





