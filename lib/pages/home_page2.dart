import 'package:live_introducao_provider/services/user_service_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

// import '../repositories/user_repository.dart';
// import '../services/user_service.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    // Sem utilizar o Provider, inversão de controle Gerenciador
    // final service =
    //     UserService(repository: UserRepository(name: 'Marco Nunes'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text(
          // Provider.of<UserServiceProvider>(
          //   context,
          //   listen: false,
          // ).getName(),
          context
              .read<UserServiceProvider>()
              .getName(), // Faz o mesmo que a codificação acima, busca automaticamente, injeção de dependências
        ),
      ),
    );
  }
}
