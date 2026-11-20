import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'package:maitim_mobprog/widgets/custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String? imagePath;
  final String? avatarPath;
  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    this.imagePath,
    this.avatarPath,
    required this.date,
  });

  // Round profile picture; falls back to a person icon when no avatar is given.
  Widget _buildAvatar(double radius) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey[300],
      backgroundImage: avatarPath != null ? AssetImage(avatarPath!) : null,
      child: avatarPath == null
          ? Icon(Icons.person, size: radius * 1.2, color: Colors.black54)
          : null,
    );
  }

  // Dynamic image area: nothing / placeholder / real image.
  Widget _buildPostImage() {
    if (!hasImage) return SizedBox(height: ScreenUtil().setHeight(1));
    if (imagePath == null) return const Placeholder();
    return ClipRRect(
      borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
      child: Image.asset(
        imagePath!,
        width: double.infinity,
        height: ScreenUtil().setHeight(200),
        fit: BoxFit.cover,
        // Shows the placeholder instead of crashing if the file is missing.
        errorBuilder: (context, error, stackTrace) => const Placeholder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildAvatar(ScreenUtil().setWidth(20)),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: date,
                            fontSize: ScreenUtil().setSp(12),
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(3),
                          ),
                          Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: ScreenUtil().setSp(15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(8)),
            // Post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(8)),
            _buildPostImage(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    debugPrint('Liked');
                  },
                  icon: const Icon(
                    Icons.thumb_up,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomText(
                    text: numOfLikes.toString(),
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.redo,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                _buildAvatar(ScreenUtil().setWidth(14)),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.fromLTRB(ScreenUtil().setSp(10), 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(28),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().setSp(14))),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}