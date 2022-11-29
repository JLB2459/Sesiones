import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S11/login_provider.dart';
import 'package:practice_app/pages/home_page.dart';
import 'package:practice_app/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoginProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      // home: const HomePage(),
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: MyRoutes.home,
    );
  }
}
