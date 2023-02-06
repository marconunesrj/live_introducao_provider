import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:live_introducao_provider/pages/home_page.dart';

import 'pages/home_page2.dart';
import 'repositories/user_repository_provider.dart';
import 'services/user_service_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        // '/': (context) => const HomePage(),
        '/': (context) => MultiProvider(
              providers: [
                Provider(
                  create: (context) =>
                      UserRepositoryProvider(name: 'Marco Nunes'),
                ),
                Provider(
                  create: (context) => UserServiceProvider(
                    // repository: Provider.of<UserRepositoryProvider>(
                    //   context,
                    //   listen: false, // para não ficar escutando alteraçãoes
                    // ),
                    repository: context
                        .read(), // Faz o mesmo que a codificação acima, busca automaticamente, injeção de dependências
                  ),
                ),
              ],
              child: const HomePage2(),
            )
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
