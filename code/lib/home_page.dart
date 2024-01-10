import 'package:flutter/material.dart';
import 'package:flutter_meditation_ilia_utkin_app/app_styles.dart';
import 'package:flutter_meditation_ilia_utkin_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  int _currentBottomBar = 0;

  List<String> categories = [
    "Insomnia",
    "Depression",
    "Baby Sleep",
    "Insomnia",
    "Depression",
    "Baby Sleep",
    "Insomnia",
    "Depression",
    "Baby Sleep",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentBottomBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kBlackRich12,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _currentBottomBar == 0
                ? SvgPicture.asset(
                    'assets/home-icon-selected.svg',
                    width: 30,
                    height: 30,
                  )
                : SvgPicture.asset(
                    'assets/home-icon-unselected.svg',
                    width: 30,
                    height: 30,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentBottomBar == 1
                ? SvgPicture.asset(
                    'assets/bar-chart-icon-selected.svg',
                    width: 30,
                    height: 30,
                  )
                : SvgPicture.asset(
                    'assets/bar-chart-icon-unselected.svg',
                    width: 30,
                    height: 30,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentBottomBar == 2
                ? SvgPicture.asset(
                    'assets/people-icon-selected.svg',
                    width: 30,
                    height: 30,
                  )
                : SvgPicture.asset(
                    'assets/people-icon-unselected.svg',
                    width: 30,
                    height: 30,
                  ),
            label: '',
          ),
        ],
        currentIndex: _currentBottomBar,
        selectedItemColor: Colors.amber[800],
        backgroundColor: kBlackRichLight1C,
        onTap: _onItemTapped,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedIconTheme: const IconThemeData(size: 30),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Discover',
                      style: kInterBold.copyWith(
                        color: kWhiteFF,
                        fontSize: SizeConfig.blockSizeHorizontal! * 7.5,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => debugPrint('Search Tapped!'),
                      child: SvgPicture.asset(
                        'assets/search-icon.svg',
                        width: 28,
                        height: 28,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding12,
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
                height: kPadding28,
              ),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: categories.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        debugPrint('$index Tapped');
                        setState(() {
                          currentTab = index;
                        });
                      },
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(
                          horizontal: kPadding16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            kBorderRadius12,
                          ),
                          color: currentTab == index
                              ? kBlueAzure4A
                              : kBlackRichLight1C,
                        ),
                        margin: EdgeInsets.only(
                            left: index == 0 ? kPadding28 : kPadding12,
                            right: index == categories.length - 1
                                ? kPadding28
                                : 0),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: kInterRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kWhiteFF,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: kPadding28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: kInterMedium.copyWith(
                        color: kUltraViolet51,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                    Text(
                      'See All',
                      style: kInterMedium.copyWith(
                        color: kBlueAzure4A,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding16,
              ),
              SizedBox(
                height: 176,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 176,
                      width: 305,
                      margin: EdgeInsets.only(
                        left: index == 0 ? kPadding28 : kPadding20,
                        right: index == 1 ? kPadding28 : 0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius26),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/bg-blue.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: const EdgeInsets.all(kPadding24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sleep Meditation',
                                style: kInterBold.copyWith(
                                  color: kWhiteFF,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 5.5,
                                ),
                              ),
                              const SizedBox(
                                height: kPadding4,
                              ),
                              Text(
                                '7 Day Audio and Video Series',
                                style: kInterBold.copyWith(
                                  color: kWhiteFF.withOpacity(0.6),
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/headphone-icon.svg'),
                              const SizedBox(
                                width: kPadding16,
                              ),
                              SvgPicture.asset('assets/movie-icon.svg'),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: kPadding28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent',
                      style: kInterMedium.copyWith(
                        color: kUltraViolet51,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding16,
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding28,
                ),
                crossAxisSpacing: 20,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius26),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/bg-blue.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16, vertical: kPadding24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sleep Meditation',
                          style: kInterBold.copyWith(
                            color: kWhiteFF,
                            fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          ),
                        ),
                        SvgPicture.asset('assets/headphone-icon.svg'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius26),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/bg-blue.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16, vertical: kPadding24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sleep Meditation',
                          style: kInterBold.copyWith(
                            color: kWhiteFF,
                            fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          ),
                        ),
                        SvgPicture.asset('assets/headphone-icon.svg'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius26),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/bg-blue.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16, vertical: kPadding24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sleep Meditation',
                          style: kInterBold.copyWith(
                            color: kWhiteFF,
                            fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          ),
                        ),
                        SvgPicture.asset('assets/headphone-icon.svg'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius26),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/bg-blue.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16, vertical: kPadding24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sleep Meditation',
                          style: kInterBold.copyWith(
                            color: kWhiteFF,
                            fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          ),
                        ),
                        SvgPicture.asset('assets/headphone-icon.svg'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius26),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/bg-blue.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16, vertical: kPadding24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sleep Meditation',
                          style: kInterBold.copyWith(
                            color: kWhiteFF,
                            fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          ),
                        ),
                        SvgPicture.asset('assets/headphone-icon.svg'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius26),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/bg-blue.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16, vertical: kPadding24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sleep Meditation',
                          style: kInterBold.copyWith(
                            color: kWhiteFF,
                            fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          ),
                        ),
                        SvgPicture.asset('assets/headphone-icon.svg'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius26),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/bg-blue.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16, vertical: kPadding24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sleep Meditation',
                          style: kInterBold.copyWith(
                            color: kWhiteFF,
                            fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          ),
                        ),
                        SvgPicture.asset('assets/headphone-icon.svg'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
