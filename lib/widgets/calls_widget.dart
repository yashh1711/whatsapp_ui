import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
              index % 3 == 0
                  ? Icons.call_made_outlined
                  : Icons.call_received_outlined,
              color: index % 3 == 0 ? Colors.teal : Colors.red,
            ),
            const Text('  Today, 12:57 PM')
          ],
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              index % 2 == 0 ? Icons.phone : Icons.videocam,
              color: Colors.teal,
            )),
      ),
    );
  }
}
