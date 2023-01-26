import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_fe/main.dart';
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
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Secrets'),
            ),
            actions: [
              NameWidget(),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go("/new");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
