import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

// import '../repositories/user_repository.dart';
// import '../services/user_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sem utilizar o Provider, inversão de controle Gerenciador
    // final service =
    //     UserService(repository: UserRepository(name: 'Marco Nunes'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
