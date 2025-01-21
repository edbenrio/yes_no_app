import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/shared/message_field_box.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRkZ_i47Hbm4O25Ygf_ogHmc7NKEtjiW8dO3xAIiftw5j01rPCBKboSQkfNrDHjQDCcVY&usqp=CAU '),
          ),
        ),
        title: Text('Mi amor ❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return index % 2 == 0
                        ? MyMessageBubble()
                        : HerMessageBubble();
                  }),
            ),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
