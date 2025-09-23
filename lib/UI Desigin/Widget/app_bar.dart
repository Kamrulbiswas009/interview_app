import 'package:flutter/material.dart';

import '../../utlits/asset_paths.dart';

class ProjectAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProjectAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(AssetPaths.uxDesigner),
        ),
      ),
      title: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome back',
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
              SizedBox(height: 2),
              Text(
                'Kamrul Ahasun',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          color: Colors.black87,
          onPressed: () {},
        ),
        const SizedBox(width: 6),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
