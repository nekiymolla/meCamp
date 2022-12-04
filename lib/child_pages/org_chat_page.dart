import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../data/messages.dart';

class OrgChat extends StatefulWidget {
  const OrgChat({super.key});

  @override
  State<OrgChat> createState() => OrgChatState();
}

class OrgChatState extends State<OrgChat> {
  final _msgController = TextEditingController();
  List<Message> messages = [
    Message(
      text: 'Могу я что - то подсказать?',
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      isSetnByMe: false,
    ),
    Message(
      text: 'Добрый день, Я менеджер лагеря',
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      isSetnByMe: false,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: GroupedListView<Message, DateTime>(
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: true,
                  floatingHeader: true,
                  padding: const EdgeInsets.all(8.0),
                  elements: messages,
                  groupBy: (message) => DateTime(
                    message.date.year,
                    message.date.month,
                    message.date.day,
                  ),
                  groupHeaderBuilder: (Message message) => SizedBox(
                    height: 40,
                    child: Center(
                      child: Card(
                        color: const Color(0xFF004E8F),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            DateFormat.yMMMd().format(message.date),
                            style: GoogleFonts.lato(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemBuilder: (context, Message message) => Align(
                    alignment: message.isSetnByMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10.0,
                                spreadRadius: 0.2,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(message.text),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10.0,
                          spreadRadius: 0.2,
                        ),
                      ]),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    controller: _msgController,
                    decoration: InputDecoration(
                        suffixIcon: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            color: const Color(0xFF004E8F),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              final message = Message(
                                  text: _msgController.text,
                                  date: DateTime.now(),
                                  isSetnByMe: true);
                              setState(() {
                                messages.add(message);
                                _msgController.clear();
                              });
                            },
                            icon: const Icon(Icons.send_rounded),
                            color: Colors.white,
                            iconSize: 25,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none)),
                        contentPadding: const EdgeInsets.all(12.0),
                        hintText: 'Введите сообщение'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
