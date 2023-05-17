import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_get_example/pages/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Atualizar'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.adicionarNomes();
        },
        child: const Text('Inserir'),
      ),
      body: Column(
        children: [
          Obx(
            () {
              return ListView.builder(
                itemCount: controller.listNomes.length,
                itemBuilder: (context, index) {
                  final nomes = controller.listNomes[index];
                  return ListTile(
                    title: Text(nomes),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
