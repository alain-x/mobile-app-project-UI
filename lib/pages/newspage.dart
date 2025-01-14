import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'img/1000hills.jpg',
      'img/pw.png',
      'img/gym.png',
      'img/1000hills.jpg',

    ];

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sponsor',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,  // The length of the images list
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset(
                      images[index],  // Get the image from the list by index
                      height: 40,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
