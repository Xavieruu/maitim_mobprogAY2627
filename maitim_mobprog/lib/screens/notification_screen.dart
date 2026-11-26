import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // 20 notifications
  final List<Map<String, String>> _notifications = [
    {'name': 'Jade Ashley Bino', 'post': 'My pet happy dog!', 'description': 'Liked your post'},
    {'name': 'Lebron James', 'post': 'My pet happy dog!', 'description': 'Commented on your post'},
    {'name': 'Stephen Curry', 'post': 'My pet happy dog!', 'description': 'Shared your post'},
    {'name': 'Cristiano Ronaldo', 'post': 'My pet happy dog!', 'description': 'Liked your post'},
    {'name': 'Karl Andrew De Leon', 'post': 'Lab Activity 2', 'description': 'Tagged you in a post'},
    {'name': 'Jerrymie Liwag', 'post': 'Lab Activity 2', 'description': 'Replied to your comment'},
    {'name': 'Sophia Abegail Dagoc', 'post': 'My pet happy dog!', 'description': 'Liked your comment'},
    {'name': 'Lionel Messi', 'post': 'My pet happy dog!', 'description': 'Liked your post'},
    {'name': 'Jose Protacio Rizal', 'post': 'Wazzup facebook!', 'description': 'Shared your post'},
    {'name': 'Manny Pacquiao', 'post': 'My pet happy dog!', 'description': 'Commented on your post'},
    {'name': 'Kevin Durant', 'post': 'Weekend plans', 'description': 'Liked your post'},
    {'name': 'Taylor Swift', 'post': 'My pet happy dog!', 'description': 'Liked your post'},
    {'name': 'Keanu Reeves', 'post': 'Weekend plans', 'description': 'Replied to your comment'},
    {'name': 'Dwayne Johnson', 'post': 'My pet happy dog!', 'description': 'Shared your post'},
    {'name': 'Neymar Jr', 'post': 'Lab Activity 2', 'description': 'Liked your comment'},
    {'name': 'Giannis Antetokounmpo', 'post': 'My pet happy dog!', 'description': 'Commented on your post'},
    {'name': 'Luka Doncic', 'post': 'Weekend plans', 'description': 'Liked your post'},
    {'name': 'Jayson Tatum', 'post': 'My pet happy dog!', 'description': 'Tagged you in a photo'},
    {'name': 'Kylian Mbappe', 'post': 'Lab Activity 2', 'description': 'Liked your post'},
    {'name': 'Michael Jordan', 'post': 'My pet happy dog!', 'description': 'Shared your post'},
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
