import 'package:flutter/material.dart';
import 'package:grand_hotel/features/main_app/profile/widgets/profile_tile.dart';
import 'package:grand_hotel/features/main_app/utils/image_utils.dart';
import 'package:grand_hotel/features/main_app/utils/main_app_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(999),
                child: netImg(
                  profileAvatarUrl,
                  w: 52,
                  h: 52,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mohamed ahmed',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '@Mohamed',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.edit, size: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            'Setting',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 10),
          ProfileTile(
            icon: Icons.credit_card,
            title: 'Your Card',
            onTap: () {},
          ),
          ProfileTile(icon: Icons.security, title: 'Security', onTap: () {}),
          ProfileTile(
            icon: Icons.notifications_none,
            title: 'Notification',
            onTap: () {},
          ),
          ProfileTile(icon: Icons.language, title: 'Languages', onTap: () {}),
          ProfileTile(
            icon: Icons.help_outline,
            title: 'Help and Support',
            onTap: () {},
          ),
          const SizedBox(height: 22),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
