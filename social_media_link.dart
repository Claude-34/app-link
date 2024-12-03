import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaLinkApp extends StatelessWidget {
  const SocialMediaLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Link',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SocialMediaLinkks(),
    );
  }

  SocialMediaLinkks() {}
}

class SocialMediaLinks extends StatelessWidget {
  SocialMediaLinks({super.key});
  final Map<String, String> socialMediaLink = {
    'LinkedIn': 'https://WWW.linkedin.com/in/your-profile',
    'Facebook': 'https://WWW.facebook.com/your-profile',
    'GitHub': 'https://github.com/your-profile',
    'WhatsApp': 'https://wa.me/your-phone-number',
  };
  void _launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Media Links'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset(
              'assets/logo.png',
            ),
            height: 100,
          ),
          ...socialMediaLink.keys.map((Platform) {
            return ElevatedButton(
                onPressed: () => _launchURL(SocialMediaLinks[Platform]!),
                child: Text('platform'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor: Colors.blue,
                  textStyle: TextStyle(fontSize: 18),
                ));
          }),
        ]),
      ),
    );
  }
}
