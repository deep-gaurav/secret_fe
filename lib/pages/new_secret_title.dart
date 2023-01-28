import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gql/schema.dart';
import 'package:secret_fe/api/api.graphql.dart';
import 'package:secret_fe/main.dart';
import 'package:secret_fe/utils/hero_text_shuttle.dart';
import 'package:secret_fe/widgets/name_widget.dart';

class NewSecretTitle extends StatefulWidget {
  const NewSecretTitle({super.key});

  @override
  State<NewSecretTitle> createState() => _NewSecretTitleState();
}

class _NewSecretTitleState extends State<NewSecretTitle> {
  final TextEditingController titleController = TextEditingController();

  onDone() {
    context.push("/new/description", extra: titleController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            actions: [NameWidget()],
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'secret_title',
                      flightShuttleBuilder: flightShuttleBuilder,
                      child: Material(
                        color: Colors.transparent,
                        child: TextFormField(
                          controller: titleController,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Title is required";
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                            hintText: "What is this\nsecret about?",
                            border: InputBorder.none,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).primaryTextTheme.headlineLarge,
                          maxLines: null,
                          onFieldSubmitted: (value) {
                            onDone();
                          },
                        ),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: titleController,
                      builder: (context, val, child) => ElevatedButton.icon(
                        label: Text('Next'),
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: val.text.trim().isEmpty ? null : onDone,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
