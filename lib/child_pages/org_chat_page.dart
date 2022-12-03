import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class OrgChat extends StatefulWidget {
  final int chatId;
  const OrgChat({super.key, @PathParam() required this.chatId});

  @override
  State<OrgChat> createState() => OrgChatState();
}

class OrgChatState extends State<OrgChat> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
