import 'package:flutter/cupertino.dart';

class AppBar extends StatelessWidget {

  final Icon leading;
  final String title;
  const AppBar({Key? key,
    required this.leading,
    required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
    );
  }
}
