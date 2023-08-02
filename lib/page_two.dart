import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    //pegando este argumento usando ! para avisar que eh crtz o retorno e falando o tipagem esperada
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE TWO'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //validação
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop('retorno que será printado');
            }
          },
          child: Text('Jump To page 1 $args'),
        ),
      ),
    );
  }
}
