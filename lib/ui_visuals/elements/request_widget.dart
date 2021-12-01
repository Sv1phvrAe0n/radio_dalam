import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:radio/ui_visuals/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';


class RequestStation extends StatelessWidget {

  _launchURL() async {
    const url = 'https://telegram.me/SvlphvrAeon';
      await launch(url);
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            // color: Color(0xff151B29),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset('assets/images/not_found.png'),
                Image(image: AssetImage('lib/assets/images/not_found.png'), width: 35),
                SizedBox(height: 40),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                  children: [
                    TextSpan(text: 'Sorry, no stations matched your search.\nPlease ', style: Search),
                    TextSpan(text: 'contact the developer', style: SearchUnderlined, recognizer: TapGestureRecognizer()
                    ..onTap = () => _launchURL()),
                    TextSpan(text: ' to request a station and it will be added soon!', style: Search)
                  ]
                )
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

