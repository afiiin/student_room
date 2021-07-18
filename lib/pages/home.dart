import 'package:flutter/material.dart';
import 'package:student_room/theme.dart';
import '../widgets/course_tile.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/video.png'),
              ),
            ),
          ), // Container
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 225,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  color: backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'Brand Marketing Design',
                      style: blackTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'How to build strong company with passion',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 25),

                    // NOTE: PREPARING

                    Text(
                      '# Preparing',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),

                    CourseTile('assets/icon.png', 'Ideation', 0.7, false),
                    CourseTile('assets/icon2.png', 'Validate Idea', 0.2, false),
                    CourseTile('assets/icon3.png', 'Strong Promotion', 0.0, true),

                    // NOTE: TARGETING CUSTOMER
                    SizedBox(height: 25),
                    Text(
                      '# Targeting Customer',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),

                    CourseTile('assets/icon.png', 'App Survey', 0.0, true),
                    CourseTile('assets/icon2.png', 'Get Funding', 0.0, true),
                    CourseTile('assets/icon3.png', 'Ship to investor', 0.0, true),

                    // NOTE: BUTTONS
                    SizedBox(height: 50),
                    Container(
                      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
                      height: 50,
                      child: FlatButton(
                        color: blueColor,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text(
                          'Find and Take Quiz',
                          style: whiteTextStyle.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ), // Container
                    SizedBox(height: 15),
                    Container(
                      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
                      height: 50,
                      child: FlatButton(
                        color: lightgreyColor,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text(
                          'Skip to Home',
                          style: darkgreyTextStyle.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ), // Container
                    SizedBox(height: 52)
                  ],
                ),
              ), // Container
            ],
          ),
        ],
      ),
    );
  }
}
