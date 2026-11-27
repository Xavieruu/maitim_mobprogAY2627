import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // 20 notifications (name, post, description)
  final List<Map<String, String>> _notifications = [
    {'name': 'Taylor Swift', 'post': 'My pet happy dog!', 'description': 'Liked your post'},
    {'name': 'Karl Andrew De Leon', 'post': 'Lab Activity 2', 'description': 'Tagged you in a post'},
    {'name': 'Bruno Mars', 'post': 'New profile picture', 'description': 'Commented on your post'},
    {'name': 'Lebron James', 'post': 'Weekend plans', 'description': 'Shared your post to their feed'},
    {'name': 'Billie Eilish', 'post': 'My pet happy dog!', 'description': 'Reacted to your post'},
    {'name': 'Sophia Abegail Dagoc', 'post': 'Study session', 'description': 'Liked your comment'},
    {'name': 'Ed Sheeran', 'post': 'Throwback photo', 'description': 'Replied to your comment'},
    {'name': 'Jose Protacio Rizal', 'post': 'Wazzup facebook!', 'description': 'Shared your post'},
    {'name': 'Ariana Grande', 'post': 'My pet happy dog!', 'description': 'Liked your post and commented'},
    {'name': 'Stephen Curry', 'post': 'Good morning everyone!', 'description': 'Mentioned you in a comment'},
    {'name': 'Manny Pacquiao', 'post': 'Weekend plans', 'description': 'Commented on your post'},
    {'name': 'Jerrymie Liwag', 'post': 'Lab Activity 2', 'description': 'Replied to your comment'},
    {'name': 'Olivia Rodrigo', 'post': 'New profile picture', 'description': 'Liked your post'},
    {'name': 'Cristiano Ronaldo', 'post': 'My pet happy dog!', 'description': 'Reacted to your post'},
    {'name': 'The Weeknd', 'post': 'Throwback photo', 'description': 'Tagged you in a photo'},
    {'name': 'Jade Ashley Bino', 'post': 'Study session', 'description': 'Liked your post'},
    {'name': 'Sarah Geronimo', 'post': 'Lab Activity 2', 'description': 'Liked your comment'},
    {'name': 'Dwayne Johnson', 'post': 'Good morning everyone!', 'description': 'Shared your post'},
    {'name': 'Adele', 'post': 'Weekend plans', 'description': 'Commented on your post'},
    {'name': 'Keanu Reeves', 'post': 'My pet happy dog!', 'description': 'Replied to your comment'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: _notifications.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = _notifications[index];
          return notif.Notification(
            name: item['name']!,
            post: item['post']!,
            description: item['description']!,
          );
        },
      ),
    );
  }
}