import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Storys extends StatefulWidget {
  const Storys({Key? key}) : super(key: key);

  @override
  State<Storys> createState() => _StorysState();
}

class _StorysState extends State<Storys> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 18, 0, 15),
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 42,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://64.media.tumblr.com/a8dff7fbbb10b08f7369f59c77d2255e/934e002b558196f4-32/s400x600/680156a2012e36a302fa793110f5fc64e3172aa4.png"),
              radius: 37,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 42,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://64.media.tumblr.com/057e56e6d547b26db2ad0c6b127debcb/2a7391068acddba6-ac/s1280x1920/1bd1c90ea212e9620bf57689ae85e1349c588fa0.jpg",
              ),
              radius: 37,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 42,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://64.media.tumblr.com/c42d3e0310bf04d1951c9deb1bde9e47/tumblr_pr3f4ciDIH1u1ycqw_400.jpg"),
              radius: 37,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 42,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://64.media.tumblr.com/24ef626df635ec86a7bf9c12c946298d/tumblr_pookebwEmh1u1ycqw_1280.jpg"),
              radius: 37,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 42,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://64.media.tumblr.com/8cd9689c73d44bc5b627549b54ae9bb9/8d76146ea239fa0b-5d/s400x600/ba5fba960e24ef07211daed52fd3f07c13df1192.jpg",
              ),
              radius: 37,
            ),
          ),
        ],
      )),
    );
    /* Fim story */
  }
}
