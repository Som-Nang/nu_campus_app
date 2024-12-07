import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../constants.dart';
import 'login_page.dart';

class StartUpView extends StatefulWidget {
  const StartUpView({super.key});

  @override
  State<StartUpView> createState() => _StartUpViewState();
}

class _StartUpViewState extends State<StartUpView> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  final List<String> textList = [
    '''Norton University is the first private university in Cambodia, established on December 2, 1996 by Professor Chan Sok Khieng.''',
    '''It started to offer classes in December 1996 
 and was recognized as a university by sub-decree on September 18, 1997.''',
    '''The institution was formally inaugurated in a ceremony on February 28, 
 1997 attended by Samdech Hun Sen, 
 Prime Minister of the Royal Kingdom of Cambodia.''',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Widget> textSlider = textList
        .map(
          (item) => Container(
              width: size.width,
              padding:
                  const EdgeInsets.only(top: 10), // Add padding for spacing
              alignment: Alignment.topLeft, // Align content to the top left
              child: Column(
                children: [
                  Text(
                    item,
                    textAlign:
                        TextAlign.start, // Align text to start (left in LTR)
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14, // Adjust font size as needed
                    ),
                  ),
                  if (_current ==
                      textList.length - 1) // Check if at the last index
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginPageView()));
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.login,
                                  color: kPrimaryColor,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Get Start",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ))
                      ],
                    )
                ],
              )),
        )
        .toList();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LoginPageView()));
                        },
                        child: const Text(
                          'skip',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
                Container(
                  height: size.height * 0.50,
                  width: size.width * 0.70,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                              'https://blog.norton-u.com/NTB-logo.png'))),
                ),
                Container(
                  height: size.height * 0.42,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: kGreenDeepColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.elliptical(50, 30))),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'NORTON ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 28),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'UNIVERSITY ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 28),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: CarouselSlider(
                                      items: textSlider,
                                      carouselController: _controller,
                                      options: CarouselOptions(
                                        autoPlay: true,
                                        enlargeCenterPage: false,
                                        aspectRatio: 2.0,
                                        viewportFraction: 1.0,
                                        onPageChanged: (index, reason) {
                                          setState(() {
                                            _current = index;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: textList.asMap().entries.map((entry) {
                                  return GestureDetector(
                                    onTap: () =>
                                        _controller.animateToPage(entry.key),
                                    child: Container(
                                      width: 8.0,
                                      height: 8.0,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 4.0,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? Colors.white
                                                : kPrimaryColor)
                                            .withOpacity(_current == entry.key
                                                ? 0.9
                                                : 0.4),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
