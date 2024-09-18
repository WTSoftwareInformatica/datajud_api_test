import 'package:flutter/material.dart';
import 'package:datajud_api_test/Ui/Pages/HomePage/home_controller.dart';
import 'dropdown_menu_tribunais.dart';

class SearchbarProcesso extends StatelessWidget {
  const SearchbarProcesso({super.key, required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    Widget dropDownTribunais() {
      return Expanded(
        child: DropdownMenuTribunais(
          controller: homeController.dropDownController,
          onSelected: homeController.dropDownMenuChange,
          homeController: homeController,
        ),
      );
    }

    Widget textEditSearch() {
      return TextField(
        controller: homeController.toSearchController,
      );
    }

    Widget searchButton() {
      return ElevatedButton(
          onPressed: () {
            if (homeController.toSearchController.text.isNotEmpty) {
              homeController.dadosProcesso();
            }
          },
          child: const Text('Busca'));
    }

    Widget trfButton() {
      return ElevatedButton(
          onPressed: () {
            homeController.dadosProcessoTrf();
          },
          child: const Text('TRF'));
    }

    Widget tjesButton() {
      return ElevatedButton(
          onPressed: () {
            homeController.dadosProcessoTjes();
          },
          child: const Text('TJES'));
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: (MediaQuery.sizeOf(context).width > 950)
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  dropDownTribunais(),
                  const SizedBox(height: 10, width: 10),
                  Expanded(child: textEditSearch()),
                  const SizedBox(height: 10, width: 10),
                  searchButton(),
                  const SizedBox(height: 10, width: 10),
                  trfButton(),
                  const SizedBox(height: 10, width: 10),
                  tjesButton(),
                ])
          : SizedBox(
              height: 180,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    dropDownTribunais(),
                    const SizedBox(height: 10, width: 10),
                    SizedBox(width: 450, child: textEditSearch()),
                    const SizedBox(height: 20, width: 10),
                    Wrap(children: [
                      searchButton(),
                      const SizedBox(height: 10, width: 10),
                      trfButton(),
                      const SizedBox(height: 10, width: 10),
                      tjesButton(),
                    ]),
                  ]),
            ),
    );
  }
}
