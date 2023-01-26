import 'package:artemis/artemis.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_fe/api/api.dart';
import 'package:secret_fe/firebase_options.dart';
import 'package:secret_fe/pages/home.dart';
import 'package:secret_fe/pages/loading_screen.dart';
import 'package:secret_fe/pages/signup_screen.dart';

final String baseURL = "http://10.0.2.2:8000/";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType()!;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  UserFieldsMixin? user;
  User? firebaseUser;

  ArtemisClient client = ArtemisClient(baseURL);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(useMaterial3: true),
      title: 'Secret',
      routerConfig: GoRouter(
        redirect: (context, state) {
          if (MyApp.of(context).firebaseUser == null) {
            return "/loading?redirect=${state.path ?? '/'}";
          } else if (MyApp.of(context).user == null) {
            return "/signup?redirect=${state.path ?? '/'}";
          }
          return null;
        },
        routes: [
          GoRoute(
            path: "/",
            name: "Home",
            builder: (context, state) => Home(),
          ),
          GoRoute(
            path: "/signup",
            name: "Signup",
            builder: (context, state) {
              return SignupScreen(
                redirect: state.queryParams["redirect"] ??
                    (state.extra as String?) ??
                    "/",
              );
            },
          ),
          GoRoute(
            path: "/loading",
            name: "Loading",
            builder: (context, state) => LoadingScreen(
              redirect: state.queryParams["redirect"],
            ),
          ),
        ],
      ),
      // routeInformationParser: RouteInformationParser,
      // routerDelegate: Ro,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class RouteParser extends RouteInformationParser {}
