import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  @override
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DrawerHeader(child: Text('Menu')),

                  Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Home'),
                        onTap: () {
                          // Handle Home tap
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        onTap: () {
                          // Handle Settings tap
                        },
                      ),
                    ],
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.logout, color: theme.error),
                title: Text('Logout', style: TextStyle(color: theme.error)),
                onTap: () {
                  // Handle Logout tap
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,

        title: Text('Gathering', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          InkWell(
            splashColor: Colors.transparent,

            onTap: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
            child: Container(
              decoration: BoxDecoration(
                color: theme.surface,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(6),
              child: Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                      'https://www.pngall.com/wp-content/uploads/5/Profile-PNG-High-Quality-Image.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'Welcome to Gathering!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: theme.primary,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Find Your Next Connection.',
                  style: TextStyle(fontSize: 16, color: theme.onPrimary),
                ),
                SizedBox(height: 30),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: theme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Event Highlights',
                      style: TextStyle(color: theme.surface, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: theme.secondaryFixed,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Upcoming Events',
                      style: TextStyle(color: theme.onPrimary, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,

        onTap: (index) {
          // Handle navigation tap

          setState(() => _currentIndex = index);
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            selectedColor: theme.primary,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            selectedColor: theme.primary,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.event),
            title: Text('Events'),
            selectedColor: theme.primary,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            selectedColor: theme.primary,
          ),
        ],
      ),
    );
  }
}
