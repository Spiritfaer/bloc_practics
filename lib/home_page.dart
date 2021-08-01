import 'package:flutter/material.dart';

import 'widgets/action_buttons.dart';
import 'widgets/user_list.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BLoc Demo1')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ActionButtons(),
          Expanded(child: UserList()),
        ],
      ),
    );
  }
}
