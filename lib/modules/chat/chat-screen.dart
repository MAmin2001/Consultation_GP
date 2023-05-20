import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

//class for every msg
class Message{
  final String text;
  final DateTime date;
  final bool isSentByMe;
  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe
});
}

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //list of msgs
  List<Message> messages = [
    Message(
      text: "hey",
      date: DateTime.now().subtract(Duration(minutes: 33)),
      isSentByMe: false
    ),
    Message(
        text: "hii",
        date: DateTime.now().subtract(Duration(minutes: 53)),
        isSentByMe: true
    ),
    Message(
        text: "How are u?",
        date: DateTime.now().subtract(Duration(minutes: 23)),
        isSentByMe: false
    ),
    Message(
        text: "all good wbu?",
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: true
    ),
  ];
  var text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>
              (
              padding: EdgeInsetsDirectional.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day
              ) ,
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(8),
                      child: Text(
                        DateFormat.yMMMd().format(message.date),
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                ? Alignment.centerRight
                : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsetsDirectional.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            )
            ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.shade200,
                ),

                child: TextField(
                  onSubmitted: (text){
                    final message = Message(
                        text: text,
                        date: DateTime.now(),
                        isSentByMe: true);
                    setState(() {
                      text = text;
                      messages.add(message);
                    });
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.all(12),
                    hintText: "Type your message here...",
                  ),
                ),
              ),
              IconButton(onPressed: (){

              }, icon: Icon(
                color: Theme.of(context).primaryColor,
                Icons.send
              ))
            ],
          )
        ],
      ),
    );
  }
}
