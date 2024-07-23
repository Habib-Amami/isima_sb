// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum ISIMaClasses {
  LCS1("LCS 1"),
  LCS2GLSI("LCS 2 - GLSI"),
  LCS2IM("LCS 2 - IM"),
  LCS3GLSI("LCS 3 - GLSI"),
  LCS3IM("LCS 3 - IM"),
  LCE1("LCE 1"),
  LCE2IRS("LCE 2 - IRS"),
  LCE2SE("LCE 2 - SE"),
  LCE3IRS("LCE 3 - IRS"),
  LCE3SE("LCE 3 - SE"),
  LBC1("LBC 1"),
  LBC2BI("LBC 2 - BI"),
  LBC2BE("LBC 2 - BE"),
  LBC3BI("LBC 3 - BI"),
  LBC3BE("LBC 3 - BE"),
  Other("Other");

  const ISIMaClasses(
    this.className,
  );
  final String className;
}

// ignore: must_be_immutable
class ClassesDropDownMenu extends StatefulWidget {
  void Function(ISIMaClasses?) onSelected;
  ClassesDropDownMenu({
    super.key,
    required this.onSelected,
  });

  @override
  State<ClassesDropDownMenu> createState() => _ClassesDropDownMenuState();
}

class _ClassesDropDownMenuState extends State<ClassesDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: DropdownMenu<ISIMaClasses>(
        hintText: "Enter Your Study Level Here",
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        enableFilter: true,
        enableSearch: true,
        leadingIcon: const Icon(Icons.school_outlined),
        menuHeight: 150,
        width: MediaQuery.sizeOf(context).width - 32,
        initialSelection: ISIMaClasses.LCS1,
        requestFocusOnTap: true,
        onSelected: widget.onSelected,
        dropdownMenuEntries: ISIMaClasses.values
            .map<DropdownMenuEntry<ISIMaClasses>>((ISIMaClasses classe) {
          return DropdownMenuEntry<ISIMaClasses>(
            value: classe,
            label: classe.className,
          );
        }).toList(),
      ),
    );
  }
}
