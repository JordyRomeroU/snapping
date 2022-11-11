import 'package:app_snapping/widgets/custom_label.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {super.key, this.txtLabel, this.txtLabelInformation});
  final String? txtLabel;
  final String? txtLabelInformation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, right: 30, left: 30),
      child: Container(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomLbl(label: txtLabel.toString()),
            CustomLblPersonalInformation(
                labelInformation: txtLabelInformation.toString()),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}