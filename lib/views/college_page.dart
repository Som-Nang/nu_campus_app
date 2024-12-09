import 'package:campus_app/constants.dart';
import 'package:campus_app/views/dpt_page.dart';
import 'package:flutter/material.dart';

class CollegePageView extends StatefulWidget {
  const CollegePageView({super.key});

  @override
  State<CollegePageView> createState() => _CollegePageViewState();
}

class _CollegePageViewState extends State<CollegePageView> {
  var collegeList = [
    {
      'dpt': 'Computer Studies',
      'image': 'https://blog.norton-u.com/NTB-logo.png'
    },
    {'dpt': 'Architecture', 'image': 'https://blog.norton-u.com/NTB-logo.png'},
    {
      'dpt': 'Civil Engineering ',
      'image': 'https://blog.norton-u.com/NTB-logo.png'
    },
    {
      'dpt': 'Electrical and Electronic Engineer',
      'image': 'https://blog.norton-u.com/NTB-logo.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(title: const Text('Colleges of Science')),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          (orientation == Orientation.portrait) ? 2 : 3),
                  itemCount: collegeList.length,
                  itemBuilder: (BuildContext context, index) {
                    final item = collegeList[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                            color: kLessDeepBgColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: kLessDeepBgColor,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            NetworkImage(item['image'] ?? ''))),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const DptPageDetail()));
                                      },
                                      child: Text(
                                        item['dpt'] ?? '',
                                        style: const TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.bold,
                                            color: kGreenDeepColor),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
