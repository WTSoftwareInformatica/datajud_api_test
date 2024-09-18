import 'package:datajud_api_test/Ui/Pages/HomePage/home_controller.dart';
import 'package:flutter/material.dart';

class DropdownMenuTribunais extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String? value) onSelected;
  final HomeController homeController;

  const DropdownMenuTribunais(
      {super.key,
      required this.controller,
      required this.onSelected,
      required this.homeController});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      controller: controller,
      width: 450,
      menuHeight: 250,
      initialSelection: '',
      onSelected: (String? value) {
        onSelected(value);
      },
      dropdownMenuEntries: homeController
          .listaSiglaTribunais()
          .map<DropdownMenuEntry<String>>((dynamic value) {
        return DropdownMenuEntry<String>(
            style: MenuItemButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            value: value,
            label: '$value - ${homeController.nomeTribunal(value)}');
      }).toList(),
    );
  }
}
