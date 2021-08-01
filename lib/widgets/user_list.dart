import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => Container(
          child: ListTile(
            leading: Text('ID: 66'),
            title: Column(
              children: [
                Text(
                  'Name: \$some_name',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Column(
                  children: [
                    Text('Email: user@user.com'),
                    Text('Phone: 123456789'),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
