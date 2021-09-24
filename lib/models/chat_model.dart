import 'package:dating_app_bloc/models/model.dart';
import 'package:equatable/equatable.dart';

class Chat extends Equatable {
  final int id;
  final int userId;
  final int matchedUserId;
  final List<Message> message;

  const Chat({
    required this.id,
    required this.userId,
    required this.matchedUserId,
    required this.message,
  });

  static List<Chat> chats = [
    Chat(
      id: 1,
      userId: 1,
      matchedUserId: 2,
      message: Message.mesages
          .where(
            (message) =>
                (message.senderId == 1 && message.receiverId == 2) ||
                (message.senderId == 1 && message.receiverId == 1),
          )
          .toList(),
    ),
    Chat(
      id: 2,
      userId: 1,
      matchedUserId: 3,
      message: Message.mesages
          .where(
            (message) =>
                (message.senderId == 1 && message.receiverId == 3) ||
                (message.senderId == 3 && message.receiverId == 1),
          )
          .toList(),
    ),
    Chat(
      id: 3,
      userId: 1,
      matchedUserId: 5,
      message: Message.mesages
          .where(
            (message) =>
                (message.senderId == 1 && message.receiverId == 5) ||
                (message.senderId == 5 && message.receiverId == 1),
          )
          .toList(),
    ),
    Chat(
      id: 4,
      userId: 1,
      matchedUserId: 6,
      message: Message.mesages
          .where(
            (message) =>
                (message.senderId == 1 && message.receiverId == 6) ||
                (message.senderId == 6 && message.receiverId == 1),
          )
          .toList(),
    )
  ];

  @override
  List<Object?> get props => [
        id,
        userId,
        matchedUserId,
        message,
      ];
}
