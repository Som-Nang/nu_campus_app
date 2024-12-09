import 'package:campus_app/constants.dart';
import 'package:campus_app/views/college_page.dart';
import 'package:flutter/material.dart';

class DptPageDetail extends StatelessWidget {
  const DptPageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black87, Colors.transparent],
              ).createShader(Rect.fromLTRB(100, 220, rect.width, rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://aul.edu.ng/static/images/reviews/computeredu.jpg'),
                ),
              ),
              child: SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleReusableButton(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CollegePageView()));
                          },
                          icon: const Icon(Icons.arrow_back_ios_new),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Department Of Computer Studies",
                            style: TextStyle(
                                color: kBgColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              )),
            )),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                      """ At the end of the course students will be able to: Use some tenses correctly in both writing and speaking (such as: Present Perfect Simple and Continuous, Future Prediction, Passive tense of Present Simple, Present Perfect, Past Simple, and future Will Use some other grammar structures to construct the sentences in both speaking ancausative verbs followed by gerunds and infinities, the affixes, phrasal verbs, conditional sentences, indirect questions, and reported speech. Use the vocabulary correctly in their every day conversation and writing. Listen to the native speakers through much practice the listening skill d writing skills such as, modal verbs, in each unit. Conduct some research topics assigned by the lecturer. Learn how to work in group as the work assigned by the lecturer.""",
                      textAlign: TextAlign.justify),
                  SizedBox(height: 10),
                  Image(
                    image: NetworkImage(
                        'https://www.bellarmine.edu/sf-images/default-source/blog/computer-science.png?sfvrsn=7d557280_4'),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Text(
                      """ At the end of the course students will be able to: Use some tenses correctly in both writing and speaking (such as: Present Perfect Simple and Continuous, Future Prediction, Passive tense of Present Simple, Present Perfect, Past Simple, and future Will Use some other grammar structures to construct the sentences in both speaking ancausative verbs followed by gerunds and infinities, the affixes, phrasal verbs, conditional sentences, indirect questions, and reported speech. Use the vocabulary correctly in their every day conversation and writing. Listen to the native speakers through much practice the listening skill d writing skills such as, modal verbs, in each unit. Conduct some research topics assigned by the lecturer. Learn how to work in group as the work assigned by the lecturer.""",
                      textAlign: TextAlign.justify),
                  SizedBox(height: 10),
                  Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_Whxil6ckaT7YXcVIsh0mGAyK3tiQvUFqKg&s'),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class CircleReusableButton extends StatelessWidget {
  const CircleReusableButton({super.key, required this.icon, this.onTap});
  final Icon icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
      child: IconButton(onPressed: onTap, icon: icon),
    );
  }
}
