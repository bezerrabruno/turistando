import 'package:flutter/material.dart';
import 'package:turistando/app/core/utils/app_state_enum.dart';
import 'package:turistando/app/modules/home/ui/controller/home_controller.dart';
import 'package:turistando/app/modules/home/ui/widgets/cep_card.dart';

class HomePage extends StatefulWidget {
  final HomeController controller;

  const HomePage({super.key, required this.controller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                maxLength: 8,
                controller: widget.controller.controllerText,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'CEP',
                  suffixIcon: IconButton(
                    onPressed: widget.controller.searchCepRandom,
                    icon: const Icon(Icons.all_inclusive_outlined),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: widget.controller.validateCep,
              child: const Text('Search'),
            ),
          ),
          Center(
            child: ListenableBuilder(
              listenable: widget.controller,
              builder: (context, _) {
                switch (widget.controller.state) {
                  case AppState.initial:
                    return const SizedBox();

                  case AppState.loading:
                    return Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: CircularProgressIndicator(
                          strokeWidth: 8,
                        ),
                      ),
                    );

                  case AppState.failure:
                    return Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: const Text(
                        'Failure, try again',
                        style: TextStyle(fontSize: 24),
                      ),
                    );

                  case AppState.success:
                    return CepCard(
                      cep: widget.controller.cep,
                      reset: () => widget.controller.state = AppState.initial,
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
