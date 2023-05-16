import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/calls_widget.dart';
import 'package:whatsapp_ui/widgets/chat_widget.dart';
import 'package:whatsapp_ui/widgets/community_widget.dart';
import 'package:whatsapp_ui/widgets/status_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.groups_2)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls'))
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text('Logout'),
                      )
                    ])
          ],
        ),
        body: const TabBarView(
          children: [
            CommunityWidget(),
            ChatWidget(),
            StatusWidget(),
            CallWidget(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
