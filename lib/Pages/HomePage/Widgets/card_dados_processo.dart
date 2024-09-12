import 'package:datajud_api_test/Services/tribunais_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../Models/processo/processo_state.dart';
import '../../../Models/processo/processo_store.dart';
import '../../../Widgets/custom_textformfield.dart';

class CardDadosProcesso extends StatelessWidget {
  const CardDadosProcesso({super.key});

  @override
  Widget build(BuildContext context) {
    final processoStore = context.watch<ProcessoStore>();
    final state = processoStore.value;
    final tribunaisService = TribunaisService();
    Widget? child;

    if (state is SuccessProcessoState) {
      final siglaTribunal = state.processo.tribunal.toString();
      child = Card(
        elevation: 3,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomTextFormField(
                label: 'Número do Processo',
                text: state.processo.numeroProcesso.toString(),
              ),
              CustomTextFormField(
                label: 'Tribunal',
                text:
                    '$siglaTribunal - ${tribunaisService.getNomeTribunal(siglaTribunal)}',
              ),
              CustomTextFormField(
                label: 'Instância',
                text: state.processo.grau.toString(),
              ),
              CustomTextFormField(
                  label: 'Assunto',
                  text: state.processo.assuntos!.elementAt(0).nome.toString()),
              CustomTextFormField(
                  label: 'Classe',
                  text: state.processo.classe!.nome.toString()),
              CustomTextFormField(
                  label: 'Órgão Julgador',
                  text: state.processo.orgaoJulgador!.nome.toString()),
              CustomTextFormField(
                  label: 'Data do Ajuizamento',
                  text: DateFormat('dd-MM-yyyy – HH:mm ')
                      .format(state.processo.dataAjuizamento!)),
              CustomTextFormField(
                  label: 'Última Atualização',
                  text: DateFormat('dd-MM-yyyy – HH:mm ')
                      .format(state.processo.dataHoraUltimaAtualizacao!)),
            ],
          ),
        ),
      );
    }
    return child ?? Container();
  }
}
