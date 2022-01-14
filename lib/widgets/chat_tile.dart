import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final bool isRead;

  ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.message,
      required this.time,
      required this.isRead});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                message,
                style: isRead
                    ? subtitleTextStyle
                    : subtitleTextStyle.copyWith(
                        color: blackColor,
                      ),
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
          ),
        ],
      ),
    );
  }
}
