import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF003049),
          primary: const Color(0xFF003049),
          secondary: const Color(0xFFd62828),
          tertiary: const Color(0xFFf77f00),
          surface: const Color(0xFFfcbf49),
          background: const Color(0xFFeae2b7),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Hi, there! I am Reynan",
      style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/reynan.png'),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "Reynan L. Dalida",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              buildInfoContainer(
                icon: Icons.location_on,
                title: "Address:",
                content: "Bilao, Sapi-an, Capiz, Philippines",
              ),
              const SizedBox(height: 15),
              buildInfoContainer(
                icon: Icons.email,
                title: "Email:",
                content: "reynan.dalida@wvsu.edu.ph",
              ),
              const SizedBox(height: 15),
              buildInfoContainer(
                icon: Icons.school,
                title: "Education:",
                content: "West Visayas State University\nBachelor of Science in Information Technology Major in Network and Information Security (NIS)",
              ),
              const SizedBox(height: 15),
              buildInfoContainer(
                icon: Icons.phone,
                title: "Phone:",
                content: "09911057597",
              ),
              const SizedBox(height: 15),
              buildInfoContainer(
                icon: Icons.favorite,
                title: "Hobbies:",
                content: "Playing Badminton, Watching K-Drama, Online Shopping, Reading News Online",
              ),
              const SizedBox(height: 15),
              buildInfoContainer(
                icon: Icons.info,
                title: "Biography:",
                content: "Reynan is a 20-year-old, third-year Bachelor of Science in Information Technology (BSIT) student, majoring in Network and Information Security (NIS). "
                    "Hailing from the town of Sapi-an in Capiz, he has a deep passion for technology, particularly in the realms of cybersecurity and network infrastructure. "
                    "His academic focus on securing information systems reflects his commitment to solving real-world problems in digital security. "
                    "Beyond his studies, Reynan leads a balanced life, enjoying activities like playing badminton, immersing himself in the latest K-dramas, listening to music, and keeping up-to-date with current events by reading news online. "
                    "This mix of work and play showcases his well-rounded personality and his ability to manage both academic and personal pursuits.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildInfoContainer({
  required IconData icon,
  required String title,
  required String content,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.teal.shade50,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.teal.withOpacity(0.2),
          blurRadius: 10,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Icon(icon, color: Colors.teal),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Text(content),
        ),
      ],
    ),
  );
}