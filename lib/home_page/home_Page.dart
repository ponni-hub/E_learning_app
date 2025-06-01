import 'package:e_learning_app/About_us_page/about_page.dart';
import 'package:e_learning_app/contact_page/contact_page.dart';
import 'package:e_learning_app/courses_page/courses_page.dart';
import 'package:e_learning_app/home_page/home_page_widget.dart';
import 'package:e_learning_app/main.dart';
import 'package:e_learning_app/pricing_Page/pricing_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedButton = 'explore'; // default selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
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
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CustomTopBarPage(child: const HomePage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Courses'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CustomTopBarPage(child: const CoursesPage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text('Pricing'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CustomTopBarPage(child: const PricingPage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CustomTopBarPage(child: const AboutPage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CustomTopBarPage(child: const ContactPage()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Creative Card
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 4)
                  ],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.flash_on, color: Colors.orange),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: "Unlock ",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "Your Creative Potential",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Main Section
            SizedBox(
              width: 350,
              height: 200,
              child: Column(
                children: [
                  const Text(
                    "with Online Design and Development Courses.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Learn from Industry Experts and Enhance Your Skills.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Toggle Buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedButton == 'explore'
                                ? Colors.orange
                                : Colors.white,
                            foregroundColor: selectedButton == 'explore'
                                ? Colors.white
                                : Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: const BorderSide(color: Colors.orange),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedButton = 'explore';
                            });

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CustomTopBarPage(
                                    child: const CoursesPage()),
                              ),
                            );
                          },
                          child: const Text("Explore Courses"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedButton == 'pricing'
                                ? Colors.orange
                                : Colors.white,
                            foregroundColor: selectedButton == 'pricing'
                                ? Colors.white
                                : Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: const BorderSide(color: Colors.orange),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedButton = 'pricing';
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CustomTopBarPage(
                                    child: const PricingPage()),
                              ),
                            );
                          },
                          child: const Text("View Pricing"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Logos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FlutterLogo(size: 40),
                Icon(Icons.music_note, size: 40),
                Icon(Icons.videocam, size: 40),
              ],
            ),

            const SizedBox(height: 30),

            // Video Preview
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[300],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/std1.jpg",
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.play_arrow,
                          size: 32, color: Colors.orange),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Benefits Section
            SizedBox(
              width: 350,
              height: 200,
              child: Column(
                children: [
                  const Text(
                    "Benefits",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Learn from Industry Experts and Enhance Your Skills. Learn from Industry Experts and Enhance Your Skills. Learn from Industry Experts and Enhance Your Skills.",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {},
                          child: const Text(" View All"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            buildLearningBenefitCard(
              number: "01",
              title: "Flexible Learning Schedule",
              description:
                  "Fit your coursework around your existing commitments and obligations.",
              icon: Icons.open_in_new, // or any icon you like
            ),
            SizedBox(height: 20),
            buildLearningBenefitCard(
              number: "02",
              title: "Expert Instruction",
              description:
                  "Learn from industry experts who have hands-on experience in design and development.",
              icon: Icons.open_in_new, // or any icon you like
            ),
            SizedBox(height: 20),
            buildLearningBenefitCard(
              number: "03",
              title: "Diverse Course Offerings",
              description:
                  "Explore a wide range of design and development courses covering various topics.",
              icon: Icons.open_in_new, // or any icon you like
            ),
            SizedBox(height: 20),
            buildLearningBenefitCard(
              number: "04",
              title: "Updated Curriculum",
              description:
                  "Access courses with up-to-date content reflecting the latest trends and industry practices.",
              icon: Icons.open_in_new, // or any icon you like
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(24.0),
              color: const Color(0xFFF9F9F9), // Light grey background
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our Courses',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Lorem ipsum dolor sit amet consectetur. Tempus tincidunt etiam '
                    'eget elit id imperdiet et. Cras eu sit dignissim lorem nibh et. '
                    'Ac cum eget habitasse in velit fringilla feugiat senectus in.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Add your onPressed logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black87,
                      elevation: 0,
                      side: const BorderSide(color: Colors.black12),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                    ),
                    child: const Text('View All'),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            buildCourseCard(
              imageUrl: 'https://example.com/image.jpg',
              duration: '4 Weeks',
              level: 'Beginner',
              author: 'John Smith',
              title: 'Web Design Fundamentals',
              description:
                  'Learn the fundamentals of web design, including HTML, CSS, and responsive design principles.',
              onPressed: () {
                print('Course clicked');
              },
            ),
            SizedBox(height: 20),

            buildCourseCard(
              imageUrl: 'https://example.com/image.jpg',
              duration: '4 Weeks',
              level: 'Beginner',
              author: 'John Smith',
              title: 'Web Design Fundamentals',
              description:
                  'Learn the fundamentals of web design, including HTML, CSS, and responsive design principles.',
              onPressed: () {
                print('Course clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
