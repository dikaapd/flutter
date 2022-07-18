import 'package:flutter/material.dart';
import 'package:kemahasiswaan/View/login_view.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 60.75,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Log Out'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
