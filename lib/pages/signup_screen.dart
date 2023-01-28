import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_fe/api/api.graphql.dart';
import 'package:secret_fe/main.dart';
import 'package:secret_fe/utils/hero_text_shuttle.dart';

class SignupScreen extends StatelessWidget {
  final String redirect;
  const SignupScreen({super.key, required this.redirect});

  Future signup(BuildContext context, String name) async {
    var mainApp = MyApp.of(context);
    var user = await mainApp.client
        .execute(SignUpMutation(variables: SignUpArguments(name: name)));
    if (user.data?.signup != null) {
      mainApp.user = user.data!.signup;
      context.go(redirect);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: Hero(
            tag: 'name',
            flightShuttleBuilder: flightShuttleBuilder,
            child: Material(
              color: Colors.transparent,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Name is required";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Name Please?",
                  border: InputBorder.none,
                ),
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.headlineLarge,
                onFieldSubmitted: (value) {
                  signup(context, value);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
