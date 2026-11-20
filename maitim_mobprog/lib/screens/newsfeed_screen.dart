import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Jose Protacio Rizal',
          postContent: 'Wazzup facebook!',
          numOfLikes: 10094,
          date: 'October 11, 1969',
          avatarPath: 'assets/icons/rizal.png',
        ),
        NewsFeedCard(  
          userName: 'Ashton Xavier Maitim',
          postContent: 'My pet happy dog!',
          numOfLikes: 149,
          hasImage: true,
          imagePath: 'assets/images/dog.jpg',
          avatarPath: 'assets/icons/cute.png',
          date: 'November 19, 2026',
        ),
      ],
    );
  }
}