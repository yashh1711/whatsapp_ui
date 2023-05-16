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
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                title: Text('Home ${index + 1}'),
                subtitle: const Text('Waiting to receive this message'),
                trailing: const Text('2:12 PM'),
              ),
            ),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.teal, width: 4)),
                            child: const CircleAvatar(
                              child: Icon(Icons.person),
                            ),
                          ),
                          title: const Text('My Status'),
                          subtitle: const Text('Tap to add status'),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Recent Updates',
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.teal, width: 4)),
                        child: const CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                      ),
                      title: Text('$index Status'),
                      subtitle: const Text('Today, 10:50 AM'),
                    );
                  }
                }),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                title: Text('Home ${index + 1}'),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.call_received_outlined,
                      color: index % 3 == 0 ? Colors.teal : Colors.red,
                    ),
                    const Text('  Today, 12:57 PM')
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      index % 2 == 0 ? Icons.phone : Icons.video_call,
                      color: Colors.teal,
                    )),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
