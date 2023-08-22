import 'package:flutter/material.dart';

class screentwo extends StatefulWidget {
  static const String id = 'screen two';
  const screentwo({super.key});

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/15378605/pexels-photo-15378605/free-photo-of-snow-dawn-sunset-bird.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text('SyedTasleem'),
                    onTap: (){
                      Navigator.pushNamed(context, screentwo.id);
                    },
                  );

                }),
          )
        ],
      ),
    );
  }
}
