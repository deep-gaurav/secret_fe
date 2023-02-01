import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gql/schema.dart';
import 'package:secret_fe/api/api.graphql.dart';
import 'package:secret_fe/main.dart';
import 'package:secret_fe/utils/handle_notification.dart';
import 'package:secret_fe/utils/hero_text_shuttle.dart';
import 'package:secret_fe/widgets/name_widget.dart';

class NewSecretDescription extends StatefulWidget {
  final String title;
  const NewSecretDescription({super.key, required this.title});

  @override
  State<NewSecretDescription> createState() => _NewSecretDescriptionState();
}

class _NewSecretDescriptionState extends State<NewSecretDescription> {
  final TextEditingController description = TextEditingController();

  onDone() async {
    var app = MyApp.of(context);
    var router = GoRouter.of(context);
    var res = await showDialog(
      context: context,
      builder: (context) {
        FirebaseMessaging.instance.requestPermission().then(
          (value) {
            Navigator.of(context).pop(value);
          },
        );
        return SimpleDialog(
          title: const Text('Notification permission'),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                  'Grant notification permission to get notification when someone answers your secret'),
            )
          ],
        );
      },
    );
    handleNotification(app);
    var result = await app.client.execute(CreateSecretMutation(
        variables: CreateSecretArguments(
      title: widget.title,
      message: description.text,
    )));
    if (result.data?.createSecret != null) {
      app.secrets[result.data!.createSecret.id] = result.data!.createSecret;
      router.go("/");
      router.push("/${result.data!.createSecret.id}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              title: Hero(
                tag: 'secret_title',
                flightShuttleBuilder: flightShuttleBuilder,
                child: SafeArea(
                  child: Text(
                    widget.title,
                  ),
                ),
              ),
            ),
            actions: const [NameWidget()],
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: description,
                          decoration: const InputDecoration(
                              hintText: 'what\'s your answer?...'),
                          maxLines: null,
                          minLines: 5,
                        ),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: description,
                      builder: (context, val, child) => ElevatedButton.icon(
                        label: const Text('Create Secret'),
                        icon: const Icon(Icons.arrow_forward),
                        onPressed:
                            description.text.trim().isNotEmpty ? onDone : null,
                      ),
                    )
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
