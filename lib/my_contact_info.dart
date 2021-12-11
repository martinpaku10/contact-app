import 'dart:ui';

import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Contacts",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontSize: 30, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.zero,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    SizedBox(height: 25),
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          "https://media.istockphoto.com/photos/animals-picture-id1283516080?b=1&k=20&m=1283516080&s=170667a&w=0&h=loZcArKZrnAUtovuWlteOx_ypLlkL7mh-JFQsk2Zyno="),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Kylian Mbappe",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Paris Saint German,France",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 0),
            ListTile(
              tileColor: Color(0xffd6d6d6),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    backgroundImage: NetworkImage(
                        "https://cdn.icon-icons.com/icons2/2248/PNG/512/phone_icon_136322.png"),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(
                        "https://image.shutterstock.com/image-vector/message-icon-mobile-phone-chat-260nw-1714039993.jpg"),
                  )
                ],
              ),
              title: Text(
                "Mobile",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("+245986745"),
            ),
            ListTile(
              tileColor: Color(0xffd6d6d6),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd0uehGjg94AolKLwpbtT-SjvUgRmGVo9j-IYVPVKyPwUkKky4Y1gFbGoA4G_mVR6IV5o&usqp=CAU"),
                  )
                ],
              ),
              title: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("mbappe@psg.7"),
            ),
            ListTile(
              tileColor: Color(0xffd6d6d6),
              title: Text(
                "Group",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Uni Friends"),
            ),
            Card(
              margin: EdgeInsets.zero,
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "Account Linked",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              tileColor: Color(0xffd6d6d6),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(
                        "https://cdn3.vectorstock.com/i/1000x1000/04/32/telegram-logo-icon-vector-27990432.jpg"),
                  ),
                ],
              ),
              title: Text(
                "Telegram",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              tileColor: Color(0xffd6d6d6),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/cute-flat-social-media-icons-3/512/whatsapp.png"),
                  ),
                ],
              ),
              title: Text(
                "WhatsApp",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Card(
              margin: EdgeInsets.zero,
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "More Options",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              tileColor: Color(0xffd6d6d6),
              title: Text(
                "Share Contact",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              tileColor: Color(0xffd6d6d6),
              title: Text(
                "QR Code",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
