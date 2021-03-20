import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ig_clone_app/constant/post_json.dart';
import 'package:ig_clone_app/constant/story_json.dart';
import 'package:ig_clone_app/theme/colors.dart';
import 'package:ig_clone_app/widgets/story_item.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        child: Stack(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(profile),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 19,
                                  height: 19,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: white),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: buttonFollowColor,
                                    size: 19,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: white),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                    children: List.generate(stories.length, (index) {
                  return StoryItem(
                    img: stories[index]['img'],
                    name: stories[index]['name'],
                  );
                })),
              ],
            ),
          ),
          Divider(
            color: white.withOpacity(0.3),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(posts[0]['profileImg']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          posts[0]['name'],
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Icon(
                      LineIcons.horizontalEllipsis,
                      color: white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(posts[0]['postImg']),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/loved_icon.svg",
                          width: 27,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/images/comment_icon.svg",
                          width: 27,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/images/message_icon.svg",
                          width: 27,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/images/save_icon.svg",
                      width: 27,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Liked by ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: "Rudi Setiawan ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: "and ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: "Other ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Rudi Setiawan ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: "hahaha ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "View 10 comments",
                  style: TextStyle(
                      color: white.withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(posts[0]['profileImg']),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Add a comment. . .",
                        style: TextStyle(
                            color: white.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "1 day ago",
                  style: TextStyle(
                      color: white.withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
