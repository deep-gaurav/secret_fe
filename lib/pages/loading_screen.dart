import 'dart:convert';

import 'package:artemis/artemis.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_fe/api/api.dart';
import 'package:secret_fe/main.dart';
import 'package:http/http.dart' as http;
import 'dart:developer' as develop;

class LoadingScreen extends StatefulWidget {
  final String? redirect;
  const LoadingScreen({super.key, this.redirect});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadUser();
    });
    super.initState();
  }

  Future loadUser() async {
    var mainApp = MyApp.of(context);
    if (mainApp.firebaseUser == null) {
      var user = await FirebaseAuth.instance.signInAnonymously();
      var cred = {"AnonAuth": user.user!.uid};
      var token = base64.encode(utf8.encode(json.encode(cred)));
      mainApp.client = ArtemisClient(
        baseURL,
        httpClient: HttpClientWithToken("Bearer $token"),
      );
      mainApp.firebaseUser = user.user;

      var result = await mainApp.client.execute(GetUserQuery());
      if (result.data?.user == null) {
        context.go("/signup", extra: widget.redirect);
      } else {
        mainApp.user = result.data!.user;
        context.go(widget.redirect ?? "/");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class HttpClientWithToken extends http.BaseClient {
  HttpClientWithToken(this.token);

  final String token;
  final http.Client _client = http.Client();

  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = token;
    return _client.send(request).then(
      (value) {
        develop.log("Request Code ${value.statusCode}");
        return value;
      },
    );
  }
}
