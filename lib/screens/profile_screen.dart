import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://www.gravatar.com/avatar/placeholder.png?d=mp',
              ),
            ),
            SizedBox(height: 20),
            Text('Username: user@test.com', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Email: user@test.com', style: TextStyle(fontSize: 16, color: Colors.grey)),
            Divider(height: 40),
            Text(
              'This is a demo profile screen.\nYou can enhance it with editable fields, order history, etc.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
