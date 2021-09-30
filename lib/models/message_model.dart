import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class Message extends Equatable {
  final int id;
  final int senderId;
  final int receiverId;
  final String message;
  final DateTime dateTime;
  final String timeString;

  const Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.dateTime,
    required this.timeString,
  });

  static List<Message> mesages = [
    Message(
      id: 1,
      senderId: 1,
      receiverId: 2,
      message: "Hey, how are you?.",
      dateTime: DateTime.now(),
      timeString: DateFormat('jm').format(DateTime.now()),
    ),
    Message(
      id: 2,
      senderId: 2,
      receiverId: 1,
      message: "I am good, thank you.",
      dateTime: DateTime.now(),
      timeString: DateFormat('jm').format(DateTime.now()),
    ),
    Message(
      id: 3,
      senderId: 1,
      receiverId: 2,
      message: "I am good as well. Thank you.",
      dateTime: DateTime.now(),
      timeString: DateFormat('jm').format(DateTime.now()),
    ),
    Message(
      id: 4,
      senderId: 2,
      receiverId: 1,
      message: "Where are you rn?",
      dateTime: DateTime.now(),
      timeString: DateFormat('jm').format(DateTime.now()),
    )
  ];

  @override
  List<Object?> get props => [
        id,
        senderId,
        receiverId,
        message,
        dateTime,
        timeString,
      ];
}
