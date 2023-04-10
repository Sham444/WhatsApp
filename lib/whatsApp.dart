import 'package:flutter/material.dart';

void main() {
  runApp(whatsApp());
}

class whatsApp extends StatelessWidget {
  const whatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats_App',
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('WhatsApp'),
              collapsedHeight: 100,
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
                IconButton(onPressed: () {}, icon: Icon(Icons.wifi)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
              pinned: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24))),
              flexibleSpace: FlexibleSpaceBar(
                title: Row(children: [
                  Icon(Icons.group, size: 20, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Chat',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Group',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Status',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Calls',
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ListTile(
                    title: Text('Ashish Shinde'),
                    subtitle: Text('Tejas: Hii'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/flutter.jpg'),
                      radius: 18,
                    ),
                    trailing: Text('10:10'),
                    iconColor: Colors.green,
                  );
                },
              ),
            ),

            // SliverToBoxAdapter(
            //   child:ListTile(
            //     leading: CircleAvatar(
            //          backgroundImage: AssetImage('assets/images/flutter.jpg'),
            //          radius: 14,
            //        ),
            //        trailing: Text('10:10'),
            //        title: Text('Ashish Shinde'),
            //        subtitle: Text('Tejas: Hii'),
            //   )
            // ),
          ],
        ),
      ),
    );
  }
}
