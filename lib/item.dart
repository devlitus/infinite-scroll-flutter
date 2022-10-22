import 'package:flutter/material.dart';
import 'package:inifity_scroll/userModel.dart';

class Items extends StatelessWidget {
  const Items({Key? key, required this.items}) : super(key: key);
  final UserModel items;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(items.nombre.toString().characters.first),
      title: Text(items.nombre),
      subtitle: Text(items.emailContacto2.toString()),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
