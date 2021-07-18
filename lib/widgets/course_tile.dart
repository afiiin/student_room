import 'package:flutter/material.dart';
import 'package:student_room/theme.dart';

class CourseTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double value;
  final bool isLocked;

  CourseTile(this.imageUrl, this.title, this.value, this.isLocked);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ), // Container
      title: Text(
        title,
        style: blackTextStyle.copyWith(
          fontSize: 18,
        ),
      ),
      subtitle: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: LinearProgressIndicator(
          value: value,
          minHeight: 6,
          backgroundColor: Color(0xFFECEEF5),
          valueColor: AlwaysStoppedAnimation(
            Color(0xFFF35D22),
          ),
        ),
      ),
      trailing: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              isLocked ? 'assets/btn_lock.png' : 'assets/btn_play.png',
            ),
          ),
        ),
      ), // Container
    );
  }
}
