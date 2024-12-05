import 'package:flutter/material.dart';
import 'package:social_media_links/constant.dart';
// import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatefulWidget {
  SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  final List<String> images = [
    facebook,
    whatsapp,
    linkedin,
    github,
    titok,
    instagram
  ];

  final List<String> names = [
    "Facebook",
    "Whatsapp",
    "Linkedin",
    "Github",
    "Tiktok",
    "Instagram"
  ];

  // bool _hasCallSupport = false;
  // Future<void>? _launched;
  // Future<void> _launchInBrowser(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw Exception('Could not launch $url');
  //   }
  // }

  final List<String> links = [
    'facebook.com',
    'whatsapp.com',
    'linkedin.com',
    'github.com',
    'tiktok.com',
    'instagram.com'
  ];
  // Future<void> _launchURL({String link = 'https://google.com'}) async {
  //   final Uri url = Uri.parse(link);
  //   if (await canLaunchUrl(url)) {
  //     print("launching application");
  //     await launchUrl(url);
  //   } else {
  //     print("ERROR LAUNCHING APPLICATION");
  //     throw 'Could not launch $url';
  //   }
  // }

  // final Uri toLaunch = Uri(
  //   scheme: 'https',
  //   host: 'www.google.org',
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Social Media"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: 6, // Number of items
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},

            // => _launchURL(link: links[index]),

            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        radius: 30,
                        child: Image.asset(
                          images[index],
                          width: 35,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      names[index],
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
