import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        brightness: Brightness.dark,
        title: Text(
          'facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.grey,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          // head
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.black,
            child: Column(
              children: [
                // profile image || search
                Row(
                  children: [
                    // profile image
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/user_2.jpeg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    // search text field
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.grey[800],
                          ),
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What\'s on your mind?',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                // live button || photo button || check in button
                Row(
                  children: [
                    // live button
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Live',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 4, bottom: 4),
                      height: 20,
                      width: 1,
                      color: Colors.grey,
                    ),

                    // photo button
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Photo',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 4, bottom: 4),
                      height: 20,
                      width: 1,
                      color: Colors.grey,
                    ),

                    // Check in button
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Check in',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // story
          Container(
            color: Colors.black,
            padding: EdgeInsets.all(10),
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _makeStory(
                  profileImage: 'assets/images/user_5.jpeg',
                  storyImage: 'assets/images/story_5.jpeg',
                  userName: 'User five',
                ),
                _makeStory(
                  profileImage: 'assets/images/user_4.jpeg',
                  storyImage: 'assets/images/story_4.jpeg',
                  userName: 'User four',
                ),
                _makeStory(
                  profileImage: 'assets/images/user_3.jpeg',
                  storyImage: 'assets/images/story_3.jpeg',
                  userName: 'User three',
                ),
                _makeStory(
                  profileImage: 'assets/images/user_2.jpeg',
                  storyImage: 'assets/images/story_2.jpeg',
                  userName: 'User two',
                ),
                _makeStory(
                  profileImage: 'assets/images/user_1.jpeg',
                  storyImage: 'assets/images/story_1.jpeg',
                  userName: 'User one',
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // feed_1
          _makeFeed(
            profileImage: 'assets/images/user_1.jpeg',
            userName: 'User one',
            feedTime: '1 hr ago',
            feetdText:
                'All the Lorem Ipsum generators on the Internet trend to repeat predefined.',
            storyImage_1: 'assets/images/story_1.jpeg',
            storyImage_2: 'assets/images/story_2.jpeg',
            like: true,
          ),

          SizedBox(
            height: 10,
          ),

          // feed_2
          _makeFeed(
            profileImage: 'assets/images/user_2.jpeg',
            userName: 'User two',
            feedTime: '4 hr ago',
            feetdText:
                'All the Lorem Ipsum generators on the Internet trend to repeat predefined.',
            storyImage_1: 'assets/images/story_4.jpeg',
            storyImage_2: 'assets/images/story_5.jpeg',
            like: false,
          ),

          SizedBox(
            height: 10,
          ),

          // feed_3
          _makeFeed(
            profileImage: 'assets/images/user_1.jpeg',
            userName: 'User one',
            feedTime: '1 hr ago',
            feetdText:
                'All the Lorem Ipsum generators on the Internet trend to repeat predefined.',
            storyImage_1: 'assets/images/story_1.jpeg',
            storyImage_2: 'assets/images/story_2.jpeg',
            like: true,
          ),
        ],
      ),
    );
  }

  Widget _makeStory({profileImage, storyImage, userName}) {
    return AspectRatio(
      aspectRatio: 1 / 1.41,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // profile image
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage(profileImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // user name
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _makeFeed(
      {profileImage,
      userName,
      feedTime,
      feetdText,
      storyImage_1,
      storyImage_2,
      like}) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          // profile info
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // profile image || feed time
                Row(
                  children: [
                    // profile image
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              profileImage,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    // feed time || user name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // user name
                        Text(userName,
                            style: TextStyle(
                                letterSpacing: 0.6,
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),

                        // feed time
                        Text(feedTime,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            )),
                      ],
                    ),
                  ],
                ),

                // more button
                Icon(Icons.more_horiz, color: Colors.grey, size: 30),
              ],
            ),
          ),

          // feed text
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              feetdText,
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: .6,
                height: 1.3,
              ),
            ),
          ),

          // story photos
          Container(
            padding: EdgeInsets.only(top: 5),
            height: 240,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(storyImage_2),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage(storyImage_1),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          // likes
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // likes
                Row(
                  children: [
                    _makeLike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: _makeFavorite(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '2.5k',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),

                Text(
                  '400 Comments',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),

          // like button || share button || coment button
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _makeLikeButton(isActive: like),
                _makeComentButton(),
                _makeShareButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _makeLike() {
    return Container(
      height: 23,
      width: 23,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }

  _makeFavorite() {
    return Container(
      height: 23,
      width: 23,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }

  _makeLikeButton({isActive}) {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          Icon(
            Icons.thumb_up,
            color: isActive ? Colors.blue : Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Like',
            style: TextStyle(
              color: isActive ? Colors.blue : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  _makeShareButton() {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          Icon(
            Icons.share,
            color: Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Share',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  _makeComentButton() {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          Icon(
            Icons.comment,
            color: Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Coment',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
