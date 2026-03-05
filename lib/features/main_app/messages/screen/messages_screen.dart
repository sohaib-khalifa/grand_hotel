import 'package:flutter/material.dart';
import 'package:grand_hotel/features/main_app/messages/widgets/chat_tile.dart';
import 'package:grand_hotel/features/main_app/shared/widgets/app_search_bar.dart';
import 'package:grand_hotel/features/main_app/utils/main_app_data.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          const AppSearchBar(
            hint: 'Search...',
            trailing: Icon(Icons.tune, color: Colors.grey),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              itemCount: chatItems.length,
              separatorBuilder: (_, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return ChatTile(item: chatItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
