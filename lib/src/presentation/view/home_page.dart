import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prototype/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:prototype/src/presentation/view/post_list_view.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return ListTile(
                  title: state.user == null
                      ? null
                      : Text('Hi, ${state.user?.name}'),
                  trailing: OutlinedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Log out confirmation'),
                            content: const Text(
                                'Do you want to log out from prototype app?'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Log Out'),
                              ),
                            ],
                          );
                        },
                      ).then((confirm) {
                        if (confirm == true) {
                          context.read<AuthBloc>().add(const Unauthenticated());
                        }
                      });
                    },
                    child: const Text('Log Out'),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, PostListView.routeName);
              },
              child: const Text('Posts Management'),
            ),
          ],
        ),
      ),
    );
  }
}
