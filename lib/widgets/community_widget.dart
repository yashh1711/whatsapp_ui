import 'package:flutter/material.dart';

class CommunityWidget extends StatelessWidget {
  const CommunityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(28.0),
          child: Image(
              height: 200,
              width: 200,
              image: NetworkImage(
                  'https://www.shutterstock.com/image-vector/heart-holding-by-diverse-hands-600w-1737747614.jpg')),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Introducing Communities',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    letterSpacing: 1),
              ),
              TextSpan(
                text:
                    '\n\nCommunities are like neighbourhoods and schools.  Easily organize them according to your needs.',
                style: TextStyle(
                    color: Colors.grey[700],
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 0.5),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            elevation: MaterialStatePropertyAll(4),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
          child: const Text('Start Your Community'),
        )
      ],
    );
  }
}
