import 'dart:ui';

import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Contacts",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontSize: 25, color: Colors.black),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.ladbible.com/resize?format=jpeg&quality=70&width=648&fit=pad&dpr=1&url=https://eu-images.contentstack.com/v3/assets/blta90d05ad41a54a71/blt9e07717573872afc/61ae1a47b3a30f3debfbe873/PA-64074583.jpg"),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search by name or number",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 17),
              child: ListView(
                children: [
                  const Text("Recents"),
                  ContactCard(
                    userName: "Luis Suarez",
                    userContact: "+245567856",
                    imageUr1:
                        "https://images.unsplash.com/photo-1571754472834-677ab0a62ba7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1369&q=80",
                    onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Contacts(),
                          ));
                    },
                  ),
                  const ContactCard(
                      userName: "Junior Neymar",
                      userContact: "+245678798",
                      imageUr1:
                          "https://images.unsplash.com/photo-1529629468183-b9cddd7be13b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmV5bWFyJTIwanJ8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
                  const ContactCard(
                      userName: "Ansu Fati",
                      userContact: "+245678798",
                      imageUr1:
                          "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YW5pbWFsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(7),
                    child: Text("Contacts"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 360),
                    child: const Text(
                      "A",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ),
                  const ContactCard(
                    userName: "Antoine Griezmann",
                    userContact: "+245789097",
                    imageUr1:
                        "https://images.unsplash.com/photo-1617034592936-051e66d74ebb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8OTY3MTUyNTd8fGVufDB8fHx8&dpr=2&auto=format&fit=crop&w=294&q=60",
                  ),
                  const ContactCard(
                    userName: "Adama Troare",
                    userContact: "+245645356",
                    imageUr1:
                        "https://images.unsplash.com/photo-1588167056547-c183313da47c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d29sdmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(7),
                    // child: Text("Contacts"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 360),
                    child: const Text(
                      "B",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ),
                  const ContactCard(
                    userName: "Benzema Kareem",
                    userContact: "+245790897",
                    imageUr1:
                        "https://images.unsplash.com/photo-1508050919630-b135583b29ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZyYW5jZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
                  ),
                  const ContactCard(
                    userName: "Bernado Silva",
                    userContact: "+245534657",
                    imageUr1:
                        "https://images.unsplash.com/photo-1557281279-7cb1d6d420dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
                  ),
                  const ContactCard(
                      userName: "Ben Chilwell",
                      userContact: "+245789786",
                      imageUr1:
                          "https://images.unsplash.com/photo-1628813640706-ca88bcdfb228?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlbHNlYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(7),
                    // child: Text("Contacts"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 360),
                    child: const Text(
                      "C",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ),
                  const ContactCard(
                    userName: "Cristiano Ronaldo",
                    userContact: "+245783212",
                    imageUr1:
                        "https://images.unsplash.com/photo-1638971057744-524b087f38e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: const CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff1a4ada),
        child: CircleAvatar(
          radius: 28,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 26,
            child: Icon(
              Icons.add,
              size: 30,
            ),
            backgroundColor: Color(0xff1a4ada),
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ContactCard({
    this.userName,
    this.userContact,
    this.imageUr1,
    this.onpress,
  });

  final String? userName;
  final String? userContact;
  final String? imageUr1;
  final Function? onpress;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUr1!),
        ),
        title: Text(userName!),
        subtitle: Text(userContact!),
        trailing: const Icon(Icons.more_horiz),
      ),
    );
  }
}
