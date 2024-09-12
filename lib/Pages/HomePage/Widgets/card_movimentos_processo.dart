import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../Models/processo/processo_state.dart';
import '../../../Models/processo/processo_store.dart';

class CardMovimentosProcesso extends StatelessWidget {
  const CardMovimentosProcesso({super.key});

  @override
  Widget build(BuildContext context) {
    final processoStore = context.watch<ProcessoStore>();
    final state = processoStore.value;
    final listaMovimentos = [];
    Widget? child;
    if (state is SuccessProcessoState) {
      listaMovimentos.clear();
      listaMovimentos.addAll(state.processo.movimentos!.toList());
      child = Card(
        elevation: 3,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text('Movimentos'),
              Column(
                children: [
                  SizedBox(
                    height: 370,
                    child: ListView.builder(
                      itemCount: listaMovimentos.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        int reverseIndex = listaMovimentos.length - 1 - index;
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 2,
                              child: Text(DateFormat('dd-MM-yyyy, HH:mm')
                                  .format(
                                      listaMovimentos[reverseIndex].dataHora!)),
                            ),
                            const Text(' - '),
                            Flexible(
                                flex: 3,
                                child: Text(
                                    listaMovimentos[reverseIndex].nome ?? '')),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
    return child ?? Container();
  }
}
