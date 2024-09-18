import 'package:datajud_api_test/Models/processo/processo_state.dart';
import 'package:datajud_api_test/Models/processo/processo_store.dart';
import 'package:datajud_api_test/Ui/Pages/HomePage/Widgets/card_dados_processo.dart';
import 'package:datajud_api_test/Ui/Pages/HomePage/Widgets/card_movimentos_processo.dart';
import 'package:datajud_api_test/Ui/Pages/HomePage/home_controller.dart';
import 'package:datajud_api_test/Ui/Pages/HomePage/Widgets/searchbar_processo.dart';
import 'package:datajud_api_test/Ui/Widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(context.read<ProcessoStore>());
  }

  @override
  void dispose() {
    homeController.dropDownController.dispose();
    homeController.toSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final processoStore = context.watch<ProcessoStore>();
    final state = processoStore.value;
    Widget childPage;
    if (state is LoadingProcessoState) {
      childPage = const CustomProgressIndicator();
    } else if (state is ErrorProcessoState) {
      childPage = SizedBox(
        height: (MediaQuery.sizeOf(context).height / 5) * 3,
        child: Center(child: Text(state.message)),
      );
    } else if (state is SuccessProcessoState) {
      if (MediaQuery.sizeOf(context).width > 950) {
        childPage = Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: CardDadosProcesso(homeController: homeController,)),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            const Expanded(flex: 1, child: CardMovimentosProcesso()),
          ],
        );
      } else {
        childPage = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            CardDadosProcesso(homeController: homeController,),
            const SizedBox(height: 10),
            const CardMovimentosProcesso(),
          ],
        );
      }
    } else {
      childPage = Container();
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DataJud API'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: [
              SearchbarProcesso(
                homeController: homeController,
              ),
              const SizedBox(height: 10),
              childPage,
            ])),
      ),
    );
  }
}
