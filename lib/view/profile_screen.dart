import 'package:flutter/material.dart';
import 'package:sales_app/controller/profile_controller.dart';
import 'package:sales_app/services/storage_service.dart';

class ProfileScreen extends StatelessWidget {
  final _controller = ProfileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _controller.getProfile(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError || !snapshot.hasData) {
            return Center(child: Text('Failed to load profile'));
          }

          final data = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(data['profileImage'] ?? ''),
                ),
                SizedBox(height: 16),
                Text('Email: ${data['email']}'),
                Text('Password: ${data['password']}'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await StorageService().clearAll();
                    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  },
                  child: Text('Logout'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
