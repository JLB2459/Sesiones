import 'package:flutter/material.dart';
import 'package:practice_app/pages/U2-S11/login_provider.dart';
import 'package:practice_app/routes/routes.dart';
import 'package:practice_app/services/custom_snackbar.dart';
import 'package:practice_app/services/service_auth.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthService(),
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
      scaffoldMessengerKey: CustomSnackBar.msgKey,
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
      //for s13 change to home
      initialRoute: MyRoutes.verify,
    );
  }
}
