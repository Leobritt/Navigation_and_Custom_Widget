import 'package:flutter/material.dart';
import 'package:flutter_application_routes_nav/components/custom_button.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE ONE'),
      ),
      body: Center(
        child: CustomButtonWidget(
          disable: true,
          onpressed: () {
            Navigator.of(context)
                //passando o args
                //pushReplacementNamed() usado p travar a volta pela appbar
                .pushNamed('/twoPage', arguments: 'THIS IS A ARGS')
                .then(
                  (value) => print(value),
                );
          },
          title: ('Jump to Page 2'),
          titleButtonSize: 20,
        ),
      ),
    );
  }
}
