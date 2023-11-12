import 'package:flutter/material.dart';

class CustomServiceList extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Function() onTap;
  const CustomServiceList(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 10,
        child: SizedBox(
          width: size.width,
          child: ListTile(
            leading: CircleAvatar(child: Icon(icon)),
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
        ),
      ),
    );
  }
}
