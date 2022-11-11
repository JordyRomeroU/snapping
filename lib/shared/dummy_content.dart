import 'package:app_snapping/models/model_bank_reference.dart';
import 'package:app_snapping/widgets/buttons.dart';
import 'package:flutter/material.dart';

class DummyContent extends StatelessWidget {
  final bool reverse;
  final ScrollController? controller;

  const DummyContent({Key? key, this.controller, this.reverse = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
        color: Colors.white,
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                CustomField(
                  txtLabel: 'Parentesco:',
                ),
                CustomField(
                  txtLabel: 'Nombre Completo:',
                ),
                CustomField(
                  txtLabel: 'Celular:',
                ),
                CustomField(
                  txtLabel: 'Convencional:',
                ),
                CustomField(
                  txtLabel: 'Dirección:',
                ),
                CustomField(
                  txtLabel: 'Provincia:',
                ),
                CustomField(
                  txtLabel: 'Ciudad:',
                ),
              ],
            ),
          ),
          ),
        );
  }
}