import 'package:meta/meta.dart';

class ChatModel {
  ChatModel({
    @required this.name,
    @required this.imageUrl,
    @required this.message,
    @required this.timeStamp,
  });

  final String name;
  final String imageUrl;
  final String message;
  final String timeStamp;
}

List<ChatModel> chatMessages = [
  ChatModel(
    name: "Jon Snow",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Jon_Snow-Kit_Harington.jpg",
    message: "The Iron Throne is mine",
    timeStamp: "8:55 AM",
  ),
  ChatModel(
    name: "Jon Snow",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Jon_Snow-Kit_Harington.jpg",
    message: "The Iron Throne is mine",
    timeStamp: "8:55 AM",
  ),
  ChatModel(
    name: "Jon Snow",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Jon_Snow-Kit_Harington.jpg",
    message: "The Iron Throne is mine",
    timeStamp: "9:43 AM",
  ),
  ChatModel(
    name: "Jon Snow",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Jon_Snow-Kit_Harington.jpg",
    message: "The Iron Throne is mine",
    timeStamp: "11:11 AM",
  ),
  ChatModel(
    name: "Jon Snow",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Jon_Snow-Kit_Harington.jpg",
    message: "The Iron Throne is mine",
    timeStamp: "11:07 AM",
  ),
  ChatModel(
    name: "Simon Lightfoot",
    imageUrl:
        "https://pbs.twimg.com/profile_images/1017532253394624513/LgFqlJ4U_400x400.jpg",
    message: "FLUTTER WHISPERER",
    timeStamp: "10:44 AM",
  ),
  ChatModel(
    name: "Jon Snow",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Jon_Snow-Kit_Harington.jpg",
    message: "The Iron Throne is mine",
    timeStamp: "10:07 AM",
  ),
  ChatModel(
    name: "Nash",
    imageUrl:
        "https://pbs.twimg.com/profile_images/1100199470732636167/eV0SNFsh_400x400.jpg",
    message: "Nash messages himself ?",
    timeStamp: "9:52 AM",
  ),
  ChatModel(
    name: "Jon Snow",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Jon_Snow-Kit_Harington.jpg",
    message: "The Iron Throne is mine",
    timeStamp: "11:11 AM",
  ),
  ChatModel(
    name: "Jon Snow",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Jon_Snow-Kit_Harington.jpg",
    message: "The Iron Throne is mine",
    timeStamp: "9:31 AM",
  ),
];
