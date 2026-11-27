import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  // Post data. Every post has its own likes and date.
  // hasImage + imagePath  -> real image
  // hasImage only         -> placeholder
  // neither               -> no image area
  static const List<Map<String, dynamic>> _posts = [
    {
      'userName': 'Jose Protacio Rizal',
      'postContent': 'Wazzup facebook!',
      'numOfLikes': 10094,
      'date': 'October 11, 1969',
      'avatarPath': 'assets/icons/rizal.png',
    },
    {
      'userName': 'Ashton Xavier Maitim',
      'postContent': 'My pet happy dog!',
      'numOfLikes': 149,
      'hasImage': true,
      'imagePath': 'assets/images/dog.jpg',
      'avatarPath': 'assets/icons/cute.png',
      'date': 'November 19, 2026',
    },
    {
      'userName': 'Bruno Mars',
      'postContent': 'New playlist soon?',
      'numOfLikes': 61300,
      'date': 'November 22, 2026',
      'avatarPath': 'assets/icons/bruno.png',
    },
    {
      'userName': 'Jade Ashley Bino',
      'postContent': 'Finally finished our lab activity!',
      'numOfLikes': 87,
      'date': 'November 22, 2026',
      'avatarPath': 'assets/icons/jade.png',
    },
    {
      'userName': 'Taylor Swift',
      'postContent': 'Happy weekend, everyone!',
      'numOfLikes': 78200,
      'hasImage': true,
      'date': 'November 21, 2026',
      'avatarPath': 'assets/icons/taylor.png',
      'imagePath': 'assets/images/taylor.png',
    },
    {
      'userName': 'Stephen Curry',
      'postContent': 'Gold medal for the win!',
      'numOfLikes': 41200,
      'hasImage': true,
      'imagePath': 'assets/images/curry.png',
      'avatarPath': 'assets/icons/wardell.png',
      'date': 'November 20, 2026',
    },
    {
      'userName': 'Karl Andrew De Leon',
      'postContent': 'Quiz tomorrow. Send help.',
      'numOfLikes': 12,
      'date': 'November 18, 2026',
    },
    {
      'userName': 'Lebron James',
      'postContent': 'LEBROOOOOOOOOOOOOOONNNNN',
      'numOfLikes': 52300,
      'date': 'November 17, 2026',
      'avatarPath': 'assets/icons/lebron.png',
    },
    {
      'userName': 'Sophia Abegail Dagoc',
      'postContent': 'Ganda lang!',
      'numOfLikes': 230,
      'hasImage': true,
      'date': 'November 15, 2026',
      'avatarPath': 'assets/icons/soph.png',
      'imagePath': 'assets/images/sophia.png',
    },
    {
      'userName': 'Jerrymie Liwag',
      'postContent': 'Chillin like a villain',
      'numOfLikes': 56,
      'date': 'November 14, 2026',
      'avatarPath': 'assets/icons/jm.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsFeedCard(
          userName: post['userName'],
          postContent: post['postContent'],
          numOfLikes: post['numOfLikes'] ?? 0,
          hasImage: post['hasImage'] ?? false,
          imagePath: post['imagePath'],
          avatarPath: post['avatarPath'],
          date: post['date'],
        );
      },
    );
  }
}