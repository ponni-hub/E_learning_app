import 'package:e_learning_app/About_us_page/about_page.dart';
import 'package:e_learning_app/contact_page/contact_page.dart';
import 'package:e_learning_app/courses_page/courses_page.dart';
import 'package:e_learning_app/home_page/home_Page.dart';
import 'package:e_learning_app/login_page/login_page.dart';
import 'package:e_learning_app/pricing_Page/pricing_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CustomTopBarPage extends StatelessWidget {
  final Widget child;

  const CustomTopBarPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CustomTopBarPage(child: HomePage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Courses'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CustomTopBarPage(child: CoursesPage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Pricing'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CustomTopBarPage(child: PricingPage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CustomTopBarPage(child: AboutPage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CustomTopBarPage(child: ContactPage()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Top Sale Banner
          Container(
            color: Colors.orange,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: const Text(
              "Free Courses ✴ Sale Ends Soon, Get It Now →",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),

          // Top App Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.school, color: Colors.orange, size: 30),
                Row(
                  children: [
                    const Icon(Icons.person_outline, size: 28),
                    SizedBox(width: 10),
                    Builder(
                      builder: (context) => IconButton(
                        icon: const Icon(Icons.menu, size: 28),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // Main Page Content
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
