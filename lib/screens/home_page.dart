import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0XFF171717),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Messages",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        const SizedBox(width: 35),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Online",
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                        ),
                        const SizedBox(width: 35),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Group",
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                        ),
                        const SizedBox(width: 35),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Messages",
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                        ),
                        const SizedBox(width: 35),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 110,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0XFF27C1A9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  height: 220,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Favorite Contacts",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 90,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              _circleAvatar("assets/images/img1.jpeg", "Alla"),
                              _circleAvatar("assets/images/img2.jpeg", "Alla"),
                              _circleAvatar("assets/images/img3.jpeg", "Alla"),
                              _circleAvatar("assets/images/img4.jpg", "Alla"),
                              _circleAvatar("assets/images/img5.jpeg", "Alla"),
                              _circleAvatar("assets/images/img6.jpeg", "Alla"),
                              _circleAvatar("assets/images/img7.jpeg", "Alla"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                right: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  height: 600,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        30,
                      ),
                      topRight: Radius.circular(
                        30,
                      ),
                    ),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    shrinkWrap: true,
                    children: [
                      buildConversationRow("assets/images/img1.jpeg", "Lara",
                          "Hello. Hw are you?", 0),
                      buildConversationRow("assets/images/img2.jpeg", "Nika",
                          "Hello. Hw are you?", 1),
                      buildConversationRow("assets/images/img3.jpeg", "Lora",
                          "Hello. Hw are you?", 2),
                      buildConversationRow("assets/images/img4.jpg", "Alla",
                          "Hello. Hw are you?", 2),
                      buildConversationRow("assets/images/img5.jpeg", "Mina",
                          "Hello. Hw are you?", 4),
                      buildConversationRow("assets/images/img6.jpeg", "Nina",
                          "Hello. Hw are you?", 2),
                      buildConversationRow("assets/images/img7.jpeg", "Meka",
                          "Hello. Hw are you?", 1),
                      buildConversationRow("assets/images/img8.jpg", "Lira",
                          "Hello. Hw are you?", 5),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: const Color(0XFF27C1A9),
          onPressed: () {},
          child: const Icon(
            Icons.edit,
          ),
        ),
      ),
      drawer: Drawer(
        width: 275,
        backgroundColor: Colors.black38,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(40),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0XF71F1E1E),
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      drawerWidget(Icons.arrow_back_ios, "Setting"),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          userAvatar("assets/images/img1.jpeg"),
                          const SizedBox(width: 30),
                          const Text(
                            "Dana",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 35),
                      drawerWidget(Icons.key, "Account"),
                      drawerWidget(Icons.chat, "Chat"),
                      drawerWidget(Icons.notifications_on, "Notification"),
                      drawerWidget(Icons.storage, "Data"),
                      drawerWidget(Icons.help, "Help"),
                      const Divider(
                        color: Color(0XFF27C1A9),
                      ),
                      const SizedBox(height: 20),
                      drawerWidget(Icons.people, "Invite a friends"),
                    ],
                  ),
                  drawerWidget(Icons.logout, "Log out"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget drawerWidget(IconData icon1, String text) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(
              icon1,
              color: Colors.white,
            ),
            const SizedBox(width: 56),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildConversationRow(
      String avatar, String name, String massage, int msgCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                userAvatar(avatar),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    const SizedBox(height: 5),
                    Text(massage),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(
                children: [
                  const Text(
                    "16:35",
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 15),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0XFF27C1A9),
                      child: Text(
                        msgCount.toString(),
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
        const Divider(
          indent: 70,
          thickness: 1,
        )
      ],
    );
  }

  Padding _circleAvatar(String image, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: userAvatar(image),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  CircleAvatar userAvatar(String image) {
    return CircleAvatar(
      radius: 29,
      backgroundImage: Image.asset(image).image,
    );
  }
}
