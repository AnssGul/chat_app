import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MessageTile extends StatelessWidget {
  final String messageText;
  final Timestamp timestamp;
  final bool isMe;

  const MessageTile({
    Key? key,
    required this.messageText,
    required this.timestamp,
    required this.isMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isMe ? Colors.red[800] : Colors.grey[800],
            ),
            child: Text(
              messageText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Text(
            _formatTimestamp(timestamp),
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  String _formatTimestamp(Timestamp timestamp) {
    final DateTime dateTime = timestamp.toDate();
    final String time = '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
    final String date = '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    return '$time\n$date';
  }
}
