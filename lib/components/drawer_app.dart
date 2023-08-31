import 'package:flutter/material.dart';

class drawerShop extends StatelessWidget {
  const drawerShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey.shade800,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('lib/shoes_image/logo_vans2.png')),
            
            ListTile(
              leading: IconButton(onPressed: (){},
               icon: Icon(Icons.home),
                color: Colors.white,),
              title: Text("Home",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: IconButton(onPressed: (){},
               icon: Icon(Icons.info),
                color: Colors.white,),
              title: Text("About",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: IconButton(onPressed: (){},
               icon: Icon(Icons.logout),
                color: Colors.white,),
              title: Text("Log Out",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      );
  }
}