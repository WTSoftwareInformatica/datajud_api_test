import 'package:datajud_api_test/Services/tribunais_service.dart';
import 'package:flutter/material.dart';

import '../../Models/tribunais.dart';

class DropdownMenuTribunais extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String? value) onSelected;
  const DropdownMenuTribunais({super.key, required this.controller, required this.onSelected});

  @override
  State<DropdownMenuTribunais> createState() => _DropdownMenuTribunaisState();
}

class _DropdownMenuTribunaisState extends State<DropdownMenuTribunais> {


  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      controller: widget.controller,
      width: 450,
      menuHeight: 250,
      initialSelection: '',
      onSelected: (String? value) {
        widget.onSelected(value);
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
