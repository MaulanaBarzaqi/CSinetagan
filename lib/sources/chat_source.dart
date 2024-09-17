import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:csinetagan/models/chat_model.dart';

class ChatSource {
  //kalo sudah pernah chat CS
  static Future<void> openChatRoom(String uid, String userName) async {
    await FirebaseFirestore.instance.collection('CS').doc(uid).update({
      'newFromUser': false,
    });
  }

//fungfi untuk tombol kirim pesan
  static Future<void> send(Chat chat, String uid) async {
    //notifikasi
    await FirebaseFirestore.instance.collection('CS').doc(uid).update({
      'lastMessage': chat.message,
      'newFromUser': false,
      'newFromCS': true,
    });
    //funsi tombol input chat dan mengirim(user ke cs)
    await FirebaseFirestore.instance
        .collection('CS')
        .doc(uid)
        .collection('chats')
        .add({
      'roomId': chat.roomId,
      'message': chat.message,
      'receiverId': chat.receiverId,
      'senderId': chat.senderId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
