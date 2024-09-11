import 'package:datajud_api_test/Services/tribunais_service.dart';
import 'package:flutter/material.dart';

import '../../Models/tribunais.dart';

class DropdownMenuTribunais extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String? value) onSelected;
  const DropdownMenuTribunais({super.key, required this.controller, required this.onSelected});

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
      dropdownMenuEntries: TribunaisService()
          .getListaTribunais()
          .map<DropdownMenuEntry<String>>((dynamic value) {
        return DropdownMenuEntry<String>(
            style: MenuItemButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            value: value,
//            label: '$value - ${Tribunais().tribunais[value]}');
            label: '$value - ${TribunaisService().getNomeTribunal(value)}');
      }).toList(),
    );
  }
}
