import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_fe/api/api.graphql.dart';
import 'package:secret_fe/main.dart';
import 'package:secret_fe/utils/hero_text_shuttle.dart';
import 'package:secret_fe/widgets/name_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var currentUser = MyApp.of(context).user!;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Secrets'),
            ),
            actions: [
              NameWidget(),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              MyApp.of(context).secrets.values.map(
                (secret) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () {
                        context.push("/${secret.id}");
                      },
                      child: Card(
                        elevation: 4.0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Hero(
                                      tag: 'title${secret.id}',
                                      flightShuttleBuilder:
                                          flightShuttleBuilder,
                                      child: Text(
                                        secret.title,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    if (secret.messages
                                        is SecretFieldsMixin$SecretMessages$LockedMessages)
                                      const Text(
                                          "Secret locked, Answer to see other answers")
                                    else if (secret.messages
                                        is SecretFieldsMixin$SecretMessages$UnlockedMessages)
                                      Text(
                                        "Secret answered by ${(secret.messages as SecretFieldsMixin$SecretMessages$UnlockedMessages).messages.length}people.",
                                      )
                                  ],
                                ),
                              ),
                              const Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/new");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
