import 'package:campus_app/constants.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var academicList = [
    {
      'academic': 'Foundation Studies Department',
      'image':
          'https://api.norton-u.com/storage2/May-2024/foundation1714966164.png',
    },
    {
      'academic': 'College of Sciences',
      'image': 'https://api.norton-u.com/storage2/May-2024/cs1714966232.png',
    },
    {
      'academic': 'College of Social Sciences',
      'image':
          'https://api.norton-u.com/storage2/May-2024/social-sciences1714966202.png',
    },
    {
      'academic': 'College of Arts, Humanities and Languages',
      'image': 'https://api.norton-u.com/storage2/May-2024/cahl1714966214.png',
    },
    {
      'academic': 'Faculty of Health Sciences',
      'image': 'https://api.norton-u.com/storage2/May-2024/fhs1714966223.png',
    },
    {
      'academic': 'Graduate  School',
      'image': 'https://api.norton-u.com/storage2/May-2024/nugs1714966239.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Fulan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextBlackColor),
                      ),
                      Text(
                        "How're you today?",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            color: kTextGrayColor,
                            fontSize: 10),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: kBgButtonColor,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 20,
                        foregroundColor: kPrimaryColor,
                        foregroundImage: NetworkImage(
                            'https://cdn3d.iconscout.com/3d/premium/thumb/login-3d-illustration-download-in-png-blend-fbx-gltf-file-formats--security-access-key-password-ouuu-scenes-pack-people-illustrations-2526913.png?f=webp'),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
              const Divider(),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTextGrayColor),
                  ),
                  Spacer(),
                  Text(
                    'More Detail',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kBgButtonColor),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.public,
                              color: Colors.white,
                              size: 38,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("Academic",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: kPrimaryColor)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kBgButtonColor),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_circle,
                              color: Colors.white,
                              size: 38,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("Academic",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: kPrimaryColor)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kBgButtonColor),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.safety_check_sharp,
                              color: Colors.white,
                              size: 38,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("Academic",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: kPrimaryColor)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kBgButtonColor),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.satellite_alt_sharp,
                              color: Colors.white,
                              size: 38,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("Academic",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: kPrimaryColor)),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Available Academics',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTextGrayColor),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kBgCardColor),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: academicList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = academicList[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff34495e),
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: NetworkImage(item['image'] ?? ''))),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Text(
                                  item['academic'] ?? '',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Row(
                children: [
                  Text(
                    'News & Event',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTextGrayColor),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                  width: size.width,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kLessDeepBgColor),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://cdn.norton-u.com/blog/storage_photos2/May-2024/auditing-problem1714965680.webp'))),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'ផ្នែកពាណិជ្ជសាស្ត្រនៃសាកលវិទ្យាល័យន័រតុនបានរៀបចំ',
                              maxLines: 1,
                              style: TextStyle(
                                  color: kTextMarkColor,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 10),
                            const SizedBox(height: 10),
                            const Text(
                              '''I was also thinking about blending the two images together, but haven't found a way of doing that except using opacity or something. Ideally would like it to be rendered natively rather than using "hacks" to achieve it.''',
                              maxLines: 4,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: kTextMarkColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Divider(
                              color: kPrimaryColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Read>>',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          kTextMarkColor, // Customizable color
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: kTextMarkColor,
                                      size: 12,
                                    ),
                                    SizedBox(width: 1),
                                    Text(
                                      '20/10/2025',
                                      style: TextStyle(
                                          color: kTextMarkColor, fontSize: 10),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 5),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: kTextMarkColor,
                                      size: 12,
                                    ),
                                    SizedBox(width: 1),
                                    Text(
                                      '1.3K View',
                                      style: TextStyle(
                                          color: kTextMarkColor, fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                    ],
                  )),
              const SizedBox(height: 10),
              Container(
                  width: size.width,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kLessDeepBgColor),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://cdn.norton-u.com/blog/storage_photos2/May-2024/auditing-problem1714965680.webp'))),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'ផ្នែកពាណិជ្ជសាស្ត្រនៃសាកលវិទ្យាល័យន័រតុនបានរៀបចំ',
                              maxLines: 1,
                              style: TextStyle(
                                  color: kTextMarkColor,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 10),
                            const SizedBox(height: 10),
                            const Text(
                              '''I was also thinking about blending the two images together, but haven't found a way of doing that except using opacity or something. Ideally would like it to be rendered natively rather than using "hacks" to achieve it.''',
                              maxLines: 4,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: kTextMarkColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Divider(
                              color: kPrimaryColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Read>>',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          kTextMarkColor, // Customizable color
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: kTextMarkColor,
                                      size: 12,
                                    ),
                                    SizedBox(width: 1),
                                    Text(
                                      '20/10/2025',
                                      style: TextStyle(
                                          color: kTextMarkColor, fontSize: 10),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 5),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: kTextMarkColor,
                                      size: 12,
                                    ),
                                    SizedBox(width: 1),
                                    Text(
                                      '1.3K View',
                                      style: TextStyle(
                                          color: kTextMarkColor, fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                    ],
                  )),
              const SizedBox(height: 10),
              Container(
                  width: size.width,
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kLessDeepBgColor),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://cdn.norton-u.com/blog/storage_photos2/May-2024/auditing-problem1714965680.webp'))),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text(
                              'ផ្នែកពាណិជ្ជសាស្ត្រនៃសាកលវិទ្យាល័យន័រតុនបានរៀបចំ',
                              maxLines: 1,
                              style: TextStyle(
                                  color: kTextMarkColor,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 10),
                            const SizedBox(height: 10),
                            const Text(
                              '''I was also thinking about blending the two images together, but haven't found a way of doing that except using opacity or something. Ideally would like it to be rendered natively rather than using "hacks" to achieve it.''',
                              maxLines: 4,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: kTextMarkColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Divider(
                              color: kPrimaryColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Read>>',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          kTextMarkColor, // Customizable color
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: kTextMarkColor,
                                      size: 12,
                                    ),
                                    SizedBox(width: 1),
                                    Text(
                                      '20/10/2025',
                                      style: TextStyle(
                                          color: kTextMarkColor, fontSize: 10),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 5),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: kTextMarkColor,
                                      size: 12,
                                    ),
                                    SizedBox(width: 1),
                                    Text(
                                      '1.3K View',
                                      style: TextStyle(
                                          color: kTextMarkColor, fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                    ],
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
