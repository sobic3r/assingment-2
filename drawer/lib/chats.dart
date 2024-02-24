import 'package:flutter/material.dart';

class Alllist {
  String? title;
  String? subtitle;
  String? leading;
  String? trailing;
  dynamic callicon;
  String? calltime;
  dynamic color;

  Alllist(title, subtitle, leading, trailing, callicon, calltime, color) {
    this.title = title;
    this.subtitle = subtitle;
    this.leading = leading;
    this.trailing = trailing;
    this.callicon = callicon;
    this.calltime = calltime;
    this.color = color;
  }
}

List<Alllist> chatandcall = [
  Alllist("facebook", "what's on your mind?", "images/fb.webp", "12:58",
      Icons.call_missed_outgoing, "Today, 01:33 pm",Colors.red),
  Alllist("Instagram", "Capture and shares the world's moments.",
      "images/instaa.jpg", "12:55", Icons.call_made, "Yesterday, 03:32 am",Colors.green),
  Alllist("Whatsapp", "Simple. Secure. Reliable Messaging.",
      "images/whatsapp.jpg", "12:53", Icons.call_missed, "Yesterday, 05:00 pm",Colors.red),
  Alllist("Snapchat", "Life's more fun when you live in the moment.",
      "images/snap.jpg", "12:48", Icons.call_received, "Yesterday, 06:21 am",Colors.green),
  Alllist("X", "Blaze Your Glory!", "images/x.jpg", "12:30", Icons.call_made,
      "Yesterday, 08:00 pm",Colors.green)
];

class PeoPle extends StatelessWidget {
  const PeoPle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.yellow,
      //   title:Text("Meow!!"),
      // ),
      body: Container(
        width: 2000,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset('images/flutter.png'),
              //Image.network('https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png'),
              Image.asset('images/image3.png'),
              //Text("Chill GatherinG"),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const Newapp2()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.green),
                      foregroundColor:
                          MaterialStatePropertyAll<Color>(Colors.white)),
                  child: Text("Start your community")),
              //  Container(
              //    child: const CircleAvatar(
              //     backgroundImage: NetworkImage('https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png'),

              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class ChAts extends StatelessWidget {
  const ChAts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.yellow,
        // ),
        body: ListView.builder(
          itemCount: chatandcall.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(chatandcall[index].leading!),
                ),
                tileColor: Colors.white,
                title: Text(
                  chatandcall[index].title!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(
                  chatandcall[index].subtitle!,
                  style: TextStyle(color: Colors.black45),
                ),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    chatandcall[index].trailing!,
                    style: TextStyle(color: Colors.black45),
                  ),
                ]),
              ),
            );
          },
        ),
        floatingActionButton: floating(Icons.message_rounded),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndFloat);
  }
}

class CaLls extends StatelessWidget {
  const CaLls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.teal,
              child: Center(
                  child: Text(
                '🔗',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
            title: Text(
              'Create call link',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          SizedBox(height: 10,),
          ListView.builder(
            shrinkWrap: true,
              itemCount: chatandcall.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(chatandcall[index].leading!),
                  ),
                  title: Text(
                    chatandcall[index].title!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: Row(children: [
                    Icon(chatandcall[index].callicon,color: chatandcall[index].color,size:18),
                    SizedBox(
                      width: 5,
                    ),
                    Text(chatandcall[index].calltime!)
                  ]),
                  trailing: Icon(Icons.phone,color: Colors.green,),
                );
              }),
        ],
      ),
      floatingActionButton: floating(Icons.add_call),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}

class UpdaTes extends StatelessWidget {
  const UpdaTes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Container(
                child: Stack(children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/cute-domestic-kitten-sits-window-staring-outside-generative-ai_188544-12519.jpg?w=1060&t=st=1708712710~exp=1708713310~hmac=5108f5f5d2890b8ff81966bd6ba6612cf6732879d617c415f81a946bc2db750d"),
                  ),
                  Positioned(
                      bottom: 4,
                      right: 9,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage("images/image5.png"),
                      ))
                ]),
              ),
              title: Text("My Status",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              subtitle: Text("Tap to add status updates"),
            ),
            ListTile(
              leading: Container(
                width: 80,
                height: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/image1.png"),
                ),
              ),
              title: Text("Uzair",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              trailing: Icon(
                Icons.video_call,
                color: Colors.teal.shade700,
                size: 30,
              ),
              subtitle: Row(
                children: <Widget>[
                  Icon(
                    Icons.call_received_rounded,
                    color: Colors.green,
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Yesterday, 01:45 am")
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: floating(Icons.camera_alt_outlined),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}

floating(icon) {
  return FloatingActionButton(
    onPressed: () {},
    backgroundColor: Colors.teal,
    child: Icon(
      icon,
      color: Colors.white,
    ),
  );
}
