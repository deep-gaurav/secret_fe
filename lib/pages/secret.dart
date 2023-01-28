import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_fe/api/api.dart';
import 'package:secret_fe/main.dart';
import 'package:secret_fe/utils/hero_text_shuttle.dart';
import 'package:secret_fe/widgets/name_widget.dart';
import 'package:share_plus/share_plus.dart';

class SecretPage extends StatefulWidget {
  final SecretFieldsMixin secret;

  const SecretPage({super.key, required this.secret});

  @override
  State<SecretPage> createState() => _SecretPageState();
}

class _SecretPageState extends State<SecretPage> {
  final TextEditingController description = TextEditingController();

  onDone() async {
    var app = MyApp.of(context);
    var router = GoRouter.of(context);
    var result = await app.client.execute(CreateMessageMutation(
        variables: CreateMessageArguments(
      message: description.text,
      secretId: widget.secret.id,
    )));
    var secret = await app.client.execute(
        GetSecretQuery(variables: GetSecretArguments(id: widget.secret.id)));
    if (secret.data?.secret != null) {
      app.secrets[secret.data!.secret.id] = secret.data!.secret;
      router.go("/");
      router.push("/${widget.secret.id}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: BackButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.go("/");
                }
              },
            ),
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              title: Hero(
                tag: 'title${widget.secret.id}-secret',
                flightShuttleBuilder: flightShuttleBuilder,
                child: SafeArea(
                  child: Text(
                    widget.secret.title,
                  ),
                ),
              ),
            ),
            actions: const [NameWidget()],
          ),
          if (widget.secret.messages
              is SecretFieldsMixin$SecretMessages$UnlockedMessages) ...[
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                (widget.secret.messages
                        as SecretFieldsMixin$SecretMessages$UnlockedMessages)
                    .messages
                    .map(
                  (message) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Card(
                        elevation: 4.0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                message.message,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .titleMedium,
                              ),
                              Text(
                                "answered by - ${message.creator.name}",
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        const Text(
                            "Share with your friends to know their answer"),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: (Theme.of(context).canvasColor)
                                    .lighten(0.2),
                                offset: const Offset(2, 2),
                                blurRadius: 2,
                              ),
                              BoxShadow(
                                color: Theme.of(context).canvasColor,
                                offset: const Offset(-2, -2),
                                blurRadius: 2,
                                spreadRadius: 2,
                                blurStyle: BlurStyle.inner,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "$baseURL/${widget.secret.id}",
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.copy),
                                onPressed: () {
                                  Clipboard.setData(ClipboardData(
                                      text: "$baseURL/${widget.secret.id}"));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text("Copied to clipboard"),
                                  ));
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  Share.share("$baseURL/${widget.secret.id}");
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ] else if (widget.secret.messages
              is SecretFieldsMixin$SecretMessages$LockedMessages)
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
                                hintText:
                                    'answer to know other\'s answers\nwhat\'s your answer?...'),
                            maxLines: null,
                            minLines: 5,
                          ),
                        ),
                      ),
                      ValueListenableBuilder(
                        valueListenable: description,
                        builder: (context, val, child) => ElevatedButton.icon(
                          label: const Text('Answer Secret'),
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: description.text.trim().isNotEmpty
                              ? onDone
                              : null,
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

extension Lighten on Color {
  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}
