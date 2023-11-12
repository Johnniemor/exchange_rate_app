import 'package:exchange_rate_app/core/constant/languages/languages.dart';
import 'package:flutter/material.dart';


class CustomRadioLisTile extends StatelessWidget {
  const CustomRadioLisTile({
    super.key,
    required this.title,
    required this.languages,
    required this.value,
    required this.onChange,
  });

  final String title;
  final Languages languages;
  final Languages value;
  final void Function(Languages?) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        ListTile(
          title: Text(title),
          leading: Radio<Languages>(
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            groupValue: languages,
            onChanged: onChange,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Divider(color: Colors.grey, height: 5,),
        )
      ],
    );
  }
}
