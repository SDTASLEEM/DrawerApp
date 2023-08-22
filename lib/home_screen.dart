import 'package:untitled/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/15378605/pexels-photo-15378605/free-photo-of-snow-dawn-sunset-bird.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                accountName: Text('SyedTasleem'),
                accountEmail: Text('tasleemsyed@gmail.com'),
              ),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Page 1'),
                  onTap: (){
                    Navigator.pushNamed(context, screentwo.id);
                  }
              ),
              ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text('Page 2'),
                  onTap: (){
                    Navigator.pushNamed(context, HomeScreen.id);
                  }
              ),
            ],
          )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, screentwo.id);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => screentwo()
                // )
              },
              child: Text('screen 1'),
            ),
          )

        ],
      ),
    );
  }
}




