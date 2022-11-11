import 'package:flutter/material.dart';

class CustomLbl extends StatefulWidget {
  const CustomLbl({super.key, required this.label});
  final String label;

  @override
  State<CustomLbl> createState() => _CustomLblState();
}

class _CustomLblState extends State<CustomLbl> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        widget.label,
        //style: montserratSemiBoldLarge,
        maxLines: 3,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
      ),
    );
  }
}

class CustomLblPersonalInformation extends StatefulWidget {
  const CustomLblPersonalInformation(
      {super.key, required this.labelInformation});
  final String labelInformation;

  @override
  State<CustomLblPersonalInformation> createState() =>
      _CustomLblPersonalInformationState();
}

class _CustomLblPersonalInformationState
    extends State<CustomLblPersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        title: Center(
          child: Text(
            widget.labelInformation,
            maxLines: 3,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}