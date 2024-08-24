import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as bd;

class NavigationItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final int notificationCount;
  final Function() onTap;

  const NavigationItem({
    Key? key,
    required this.icon,
    required this.label,
    this.notificationCount = 0,
    required this.onTap,
  }) : super(key: key);

  @override
  _NavigationItemState createState() => _NavigationItemState();
}

class _NavigationItemState extends State<NavigationItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          children: [
            bd.Badge(
              showBadge: widget.notificationCount > 0,
              badgeContent: Text(
                widget.notificationCount.toString(),
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              child: Icon(
                widget.icon,
                color: _isHovering ? Colors.blue : Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              widget.label,
              style: TextStyle(
                color: _isHovering ? Colors.blue : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
