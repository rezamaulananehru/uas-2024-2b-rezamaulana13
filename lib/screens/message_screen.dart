import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/message_provider.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: messageProvider.isLoading
          ? Center(child: CircularProgressIndicator()) // Loading Indicator
          : messageProvider.error != null
              ? Center(child: Text(messageProvider.error!)) // Error Handling
              : ListView.builder(
                  itemCount: messageProvider.messages.length,
                  itemBuilder: (context, index) {
                    final message = messageProvider.messages[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(message.senderName[0]), // Initial of the sender
                      ),
                      title: Text(message.senderName),
                      subtitle: Text(message.content),
                      trailing: Text(message.time),
                    );
                  },
                ),
    );
  }
}
