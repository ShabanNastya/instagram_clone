import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Center(
        //     child: GestureDetector(
        //   onTap: () {
        //     FirebaseAuth.instance.signOut();
        //   },
        //   child: Text(
        //     AppLocalizations.of(context)!.signOut,
        //     style: TextStyle(
        //         fontSize: 16,
        //         backgroundColor: Theme.of(context).colorScheme.secondaryVariant),
        //   ),
        // )
        /*child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index){
              return ListTile(
                title: Text(items[index]),
              );
            })*/
        );
  }
}
