import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


void main() => runApp(Demo());

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Fackbook",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.group,
                  ),
                  onPressed: () {},
                )
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.favorite),
                  ),
                  Tab(
                    icon: Icon(Icons.share),
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                  ),
                  Tab(
                    icon: Icon(Icons.group),
                  ),
                ],
              ),
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage("assets/images/1.png"),
                        // backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("No Internet"),
                    trailing: Icon(Icons.signal_cellular_connected_no_internet_4_bar),
                  ),
                  ListTile(
                    title: Text("wifi"),
                    trailing: Icon(Icons.signal_wifi_4_bar),
                  ),
                  ListTile(
                    title: Text("Hostsport"),
                    trailing: Icon(Icons.mobile_screen_share),
                  ),
                  ListTile(
                    title: Text("Setting"),
                    trailing: Icon(Icons.settings),
                  ),
                ],
              ),
            ),
            body: Center(
              child: TabBarView(
                children: <Widget>[
                  Image.asset(
                    "assets/images/1.png",
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Image.asset(
                    "assets/images/1.png",
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Image.asset(
                    "assets/images/1.png",
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Image.asset(
                    "assets/images/1.png",
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ],
              ),
            ),

            // floatingActionButton: FloatingActionButton(
            //   child: Icon(Icons.add),
            //   onPressed: (){},
            //   shape:RoundedRectangleBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(12.0)),
            //   ),
            // ),

            // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            // floatingActionButton: FloatingActionButton.extended(
            //   icon: Icon(Icons.message),
            //   label: Text("Message"),
            //   onPressed: (){},
            // ),
            floatingActionButton: SpeedDial(
              animatedIcon: AnimatedIcons.menu_close,
              overlayColor: Colors.pink[600],
              children: [
                SpeedDialChild(
                  child: Icon(Icons.message),
                  backgroundColor: Colors.orange,
                  label: "Message",
                ),
                SpeedDialChild(
                  child: Icon(Icons.location_on),
                  backgroundColor: Colors.blue,
                  label: "Location",
                  labelBackgroundColor: Colors.green,
                  labelStyle: TextStyle(
                      // fontSize: 20.0,
                      ),
                ),
                SpeedDialChild(
                  child: Icon(Icons.lock),
                  backgroundColor: Colors.deepPurpleAccent,
                  label: "Lock Screen",
                  labelBackgroundColor: Colors.orange,
                ),
                SpeedDialChild(
                  child: Icon(Icons.add_a_photo),
                  backgroundColor: Colors.black,
                  labelBackgroundColor: Colors.red,
                  label: "Take Photo",
                ),
              ],
              overlayOpacity: 0.3,
            ),
            bottomNavigationBar: BottomAppBar(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.thumb_down),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ],
                )),
          ),
        ));
  }
}
