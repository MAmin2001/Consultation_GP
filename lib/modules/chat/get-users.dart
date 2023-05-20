import 'package:flutter/material.dart';

class Friend {
  final String name;
  final String image;
  final String lastMessage;
  final DateTime lastMessageDate;

  Friend({
    required this.name,
    required this.image,
    required this.lastMessage,
    required this.lastMessageDate,
  });
}

class GetUsersScreen extends StatelessWidget {
  final List<Friend> friends = [
    Friend(
      name: "Mohamed Selim",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Hey, how are you?",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 1)),
    ),
    Friend(
      name: "Mahmoud Amin",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Where r u?",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 5)),
    ),
    Friend(
      name: "7arakat",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "ya3aaaaaaam",
      lastMessageDate: DateTime.now().subtract(Duration(days: 5)),
    ),
    Friend(
      name: "3atef",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "yastaaa",
      lastMessageDate: DateTime.now().subtract(Duration(days: 20)),
    ),
    Friend(
      name: "shalaby",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Ma7lola",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 21)),
    ),
    Friend(
      name: "Mohamed Selim",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Hey, how are you?",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 1)),
    ),
    Friend(
      name: "Mohamed Selim",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Hey, how are you?",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 1)),
    ),
    Friend(
      name: "Mohamed Selim",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Hey, how are you?",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 1)),
    ),
    Friend(
      name: "Mohamed Selim",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Hey, how are you?",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 1)),
    ),
    Friend(
      name: "Mohamed Selim",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Hey, how are you?",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 1)),
    ),
    Friend(
      name: "Mohamed Selim",
      image: "https://img.uxwing.com/wp-content/themes/uxwing/download/peoples-avatars-thoughts/man-person-icon.png",
      lastMessage: "Hey, how are you?",
      lastMessageDate: DateTime.now().subtract(Duration(hours: 1)),
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chats'),
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (BuildContext context, int index) {
          final friend = friends[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              backgroundImage: NetworkImage(friend.image),
            ),
            title: Text(friend.name),
            subtitle: Text(
              friend.lastMessage,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text(
              _formatLastMessageDate(friend.lastMessageDate),
            ),
            onTap: () {
              // Handle friend item tap here
              print('Tapped on ${friend.name}');
            },
          );
        },
      ),
    );
  }

  String _formatLastMessageDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays >= 1) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}