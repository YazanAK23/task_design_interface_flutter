import 'package:flutter/material.dart';
import 'user_info_card.dart';
import 'option_list.dart';
import 'navigation_item.dart';
import '../screens/wallet_screen.dart';
import '../screens/delivery_screen.dart';
import '../screens/message_screen.dart';
import '../screens/service_screen.dart';

class CenterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInfoCard(),
        NavigationRow(),
        OptionList(),
      ],
    );
  }
}

class NavigationRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationItem(
            icon: Icons.wallet_giftcard,
            label: 'Wallet',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WalletScreen()),
              );
            },
          ),
          NavigationItem(
            icon: Icons.delivery_dining,
            label: 'Delivery',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DeliveryScreen()),
              );
            },
          ),
          NavigationItem(
            icon: Icons.message,
            label: 'Message',
            notificationCount: 2,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageScreen()),
              );
            },
          ),
          NavigationItem(
            icon: Icons.miscellaneous_services,
            label: 'Service',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServiceScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
