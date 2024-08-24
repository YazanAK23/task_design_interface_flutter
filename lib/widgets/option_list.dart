import 'package:flutter/material.dart';
import 'option_item.dart';

class OptionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OptionItem(
          icon: Icons.location_on,
          title: 'Address',
          subtitle: 'Ensure your harvesting address',
          iconColor: Colors.purple,
        ),
        OptionItem(
          icon: Icons.lock,
          title: 'Privacy',
          subtitle: 'System permission change',
          iconColor: Colors.pink,
        ),
        OptionItem(
          icon: Icons.settings,
          title: 'General',
          subtitle: 'Basic functional settings',
          iconColor: Colors.orange,
        ),
        OptionItem(
          icon: Icons.notifications,
          title: 'Notification',
          subtitle: 'Take over the news in time',
          iconColor: Colors.blue,
        ),
      ],
    );
  }
}
