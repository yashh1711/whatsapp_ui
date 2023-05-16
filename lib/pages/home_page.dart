import 'package:flutter/material.dart';

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
        body: TabBarView(
          children: [
            const Placeholder(
              color: Colors.blueGrey,
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                leading: const CircleAvatar(),
                title: Text('$index data'),
              ),
            ),
            const Placeholder(),
            const Placeholder(),
          ],
        ),
      ),
    );
  }
}
