import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person_sharp,
                    size: 48,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Nikhil\nB.Tech 2nd Yr\nIT',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                ],
              )),
          ListTile(
            leading: const Icon(
              Icons.person_sharp,
              size: 26,
              color: Colors.black,
            ),
            title: Text(
              'Profile',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),onTap: (){},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: Icon(
              Icons.info,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'About',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),onTap: (){},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: Icon(
              Icons.help,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Help',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),onTap: (){},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: Icon(
              Icons.language,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Language',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),onTap: (){},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Settings',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),onTap: (){},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.logout,
              size: 26,
              color: Colors.red,
            ),
            title: Text(
              'LogOut',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),onTap: (){},
          ),
          const Divider(color: Colors.white,)
        ],
      ),
    );
  }
}
