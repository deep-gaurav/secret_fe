import 'package:artemis/artemis.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_fe/api/api.dart';
import 'package:secret_fe/firebase_options.dart';
import 'package:secret_fe/pages/home.dart';
import 'package:secret_fe/pages/loading_screen.dart';
import 'package:secret_fe/pages/new_secret_description.dart';
import 'package:secret_fe/pages/new_secret_title.dart';
import 'package:secret_fe/pages/secret.dart';
import 'package:secret_fe/pages/signup_screen.dart';
import 'package:url_strategy/url_strategy.dart';

final String baseURL = const String.fromEnvironment(
  'BACKEND_URL',
  defaultValue: "",
).isEmpty
    ? kIsWeb
        ? Uri.base.origin
        : "http://10.0.2.2:8000"
    : const String.fromEnvironment(
        'BACKEND_URL',
        defaultValue: "",
      );

// final String baseURL = "http://localhost:8000";

void main() async {
  await GetStorage.init();

  var initPath = Uri.base.path;
  print("starting uri is ${Uri.base}");
  print("initPath  $initPath");
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp(
    initialPath: initPath,
  ));
}

class MyApp extends StatefulWidget {
  final String initialPath;
  const MyApp({super.key, required this.initialPath});

  static MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType()!;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  UserFieldsMixin? user;
  User? firebaseUser;

  ArtemisClient client = ArtemisClient(baseURL);

  Map<String, SecretFieldsMixin> secrets = {};

  late GoRouter router;
  @override
  void initState() {
    router = GoRouter(
      initialLocation: widget.initialPath,
      redirect: (context, state) {
        print("check for url ${state.location}");
        if (MyApp.of(context).firebaseUser == null) {
          if (state.location.startsWith("/loading?")) {
            return null;
          }
          return "/loading?redirect=${state.location}";
        } else if (MyApp.of(context).user == null) {
          if (state.location.startsWith("/signup?")) {
            return null;
          }
          return "/signup?redirect=${state.location}";
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
        GoRoute(
          path: "/new",
          name: "New Secret",
          builder: (context, state) => const NewSecretTitle(),
          routes: [
            GoRoute(
              path: "description",
              builder: (context, state) => NewSecretDescription(
                title: state.extra as String,
              ),
            )
          ],
        ),
        GoRoute(
          path: "/:id",
          name: "Secret",
          builder: (context, state) => SecretPage(
            secret: MyApp.of(context).secrets[state.params['id']]!,
          ),
          redirect: (context, state) async {
            if (state.params['id'] != null) {
              var id = state.params['id'];
              print("Trying to load secret of id $id");

              var app = MyApp.of(context);
              if (id == null) {
                return "/";
              } else if (app.secrets[id] == null) {
                var result = await app.client.execute(
                    GetSecretQuery(variables: GetSecretArguments(id: id)));
                if (result.data?.secret != null) {
                  app.secrets[id] = result.data!.secret;
                  return null;
                } else {
                  return "/error";
                }
              } else {
                return null;
              }
            } else {
              return "/error";
            }
          },
        ),
      ],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      key: const Key('main'),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(useMaterial3: true),
      title: 'Secret',
      routerConfig: router,
      // routeInformationParser: RouteInformationParser,
      // routerDelegate: Ro,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
