import 'package:flutter/material.dart';
import 'package:flutter_meditation_ilia_utkin_app/app_styles.dart';
import 'package:flutter_meditation_ilia_utkin_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class MeditationDetailPage extends StatelessWidget {
  const MeditationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kBlackRich12,
      floatingActionButton: GestureDetector(
        onTap: () {
          debugPrint('Start Tapped');
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: kPadding28,
          ),
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kBorderRadius16),
            child: TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: kWhiteFF,
                  padding: const EdgeInsets.symmetric(
                    vertical: kPadding16,
                  ),
                  backgroundColor: kBlueAzure4A,
                  textStyle: kInterBold.copyWith(
                    color: kWhiteFF,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  )),
              onPressed: () {},
              child: const Text(
                'Start',
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint('Arrow Left Tapped');
                      },
                      child: SvgPicture.asset(
                        'assets/arrow-left-icon.svg',
                        width: 28,
                        height: 28,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint('Favorite Tapped');
                      },
                      child: SvgPicture.asset(
                        'assets/favorite-icon.svg',
                        width: 28,
                        height: 28,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Text(
                  'Sleep Meditation',
                  style: kInterBold.copyWith(
                    color: kWhiteFF,
                    fontSize: SizeConfig.blockSizeHorizontal! * 7.5,
                  ),
                ),
              ),
              const SizedBox(
                height: kPadding12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Text(
                  'Best practice meditations',
                  style: kInterRegular.copyWith(
                    color: kWhiteFF.withOpacity(0.7),
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              SizedBox(
                height: 279,
                child: ListView.builder(
                  itemCount: 3,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 280,
                      height: 279,
                      margin: EdgeInsets.only(
                        left: index == 0 ? kPadding28 : kPadding20,
                        right: index == 2 ? kPadding28 : 0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius24),
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1573126617899-41f1dffb196c?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            ),
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: kPadding32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          kBorderRadius16,
                        ),
                        color: kWhiteFF.withOpacity(0.1),
                      ),
                      padding: const EdgeInsets.all(kPadding14),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/headphone-icon.svg',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: kPadding16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          kBorderRadius16,
                        ),
                        color: kWhiteFF.withOpacity(0.1),
                      ),
                      padding: const EdgeInsets.all(kPadding14),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/movie-icon.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Container(
                  height: 4,
                  width: SizeConfig.blockSizeHorizontal! * 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.blockSizeHorizontal! * 10,
                    ),
                    color: kBlueAzure4A,
                  ),
                ),
              ),
              const SizedBox(
                height: kPadding16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Text(
                  'Meditation is a practice where an individual uses a technique – such as mindfulness, or focusing their mind on a particular object, thought or activity – to train attention and awareness, and achieve a mentally clear and emotionally calm and stable state. Scholars have found meditation difficult to define, as practices vary both between traditions and within them.\n\nHow do you learn to meditate? In mindfulness meditation, we’re learning how to pay attention to the breath as it goes in and out, and notice when the mind wanders from this task. This practice of returning to the breath builds the muscles of attention and mindfulness.\n\nWhen we pay attention to our breath, we are learning how to return to, and remain in, the present moment—to anchor ourselves in the here and now on purpose, without judgement.\n\nThe idea behind mindfulness seems simple—the practice takes patience. Indeed, renowned meditation teacher Sharon Salzberg recounts that her first experience with meditation showed her how quickly the mind gets caught up in other tasks. “I thought, okay, what will it be, like, 800 breaths before my mind starts to wander? And to my absolute amazement, it was one breath, and I’d be gone,” says Salzberg.',
                  style: kInterRegular.copyWith(
                    color: kWhiteFF.withOpacity(0.7),
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
