import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                centerTitle: false,
                bottom: const TabBar(tabs: [
                  Tab(
                    child: Text(
                      'Chats',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Updates',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                      child: Text(
                    'Channels',
                    style: TextStyle(color: Colors.white),
                  )),
                  Tab(
                    child: Text(
                      'Calls',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]),
                actions: [
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 27,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Tab(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  PopupMenuButton(
                    icon: const Icon(Icons.more_vert_outlined),
                    iconColor: Colors.white,
                    iconSize: 27,
                    itemBuilder: (context) => const [
                      PopupMenuItem(value: 1, child: Text('New group')),
                      PopupMenuItem(value: 2, child: Text('New broadcast')),
                      PopupMenuItem(value: 3, child: Text('Linked devices')),
                      PopupMenuItem(value: 4, child: Text('Starred messages')),
                      PopupMenuItem(value: 5, child: Text('Settings')),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
                backgroundColor: Colors.teal,
                title: const Text(
                  'WhatsApp',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              body: TabBarView(children: [

                /// 1.Chats section

                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/emily.png'),
                          ),
                          title: Text('Emily Thomas'),
                          subtitle: Text('Where are You?'),
                          trailing: Text('7:23 PM'));
                    }),

                 /// Updates section

                ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 18),
                                child: Text(
                                  'New Updates',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.green, width: 3)),
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/images/george.png'),
                                    ),
                                  ),
                                  title: const Text('George Henry'),
                                  subtitle: const Text('1 minutes ago')),
                            ],
                          ),
                        );
                      } else {
                        return ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 3)),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/thomas.png'),
                              ),
                            ),
                            title: const Text('Thomas Charlie'),
                            subtitle: const Text('3 minutes ago'));
                      }
                    }),

                /// Channel section


                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/abc.png'),
                        ),
                        title: const Text('Engineering Support'),
                        subtitle: Text(index / 2 == 0
                            ? 'Tech News ❗❗ ...'
                            : '🚀 Unlock the Power of ...'),
                        trailing: const Text(
                            'Yesterday'),
                      );
                    }),



                /// Calls section

                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/olivia.png'),
                        ),
                        title: const Text('Olivia Mia'),
                        subtitle: Text(index / 2 == 0
                            ? 'Today,3:43 PM'
                            : 'Yesterday,7:47 AM'),
                        trailing: Icon(
                            index / 2 == 0 ? Icons.phone : Icons.video_call),
                      );
                    }),
              ])),
        ));
  }
}
