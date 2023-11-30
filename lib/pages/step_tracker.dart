import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StepTracker extends StatefulWidget {
  const StepTracker({super.key});

  @override
  State<StepTracker> createState() => _StepTrackerState();
}

class _StepTrackerState extends State<StepTracker> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const StepAppBar(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.bottomLeft,
              radius: 2, // Adjust the radius as needed
              colors: <Color>[
                Color(0xffffffff),
                Color(0xffffffff),
                Color(0xff2924BA),
                Color(0xff000000),
              ],
              stops: [0.1, 0.3, 0.6, 0.8], // Adjust the stops as needed
              tileMode: TileMode.mirror,
            ),
          ),
          child: const Column(
            children: [
              SizedBox(height: 40),
              CircularPercentIndicatorWidget(),
              SizedBox(height: 25),
              TabBarWidget(),
              TabBarViewWidget(),
            ],
          ),
        ),
      ));
}

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: TabBarView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                GiftCardsTabWidgets(
                  image: Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/b/b3/Taco_Bell_2016.svg/1200px-Taco_Bell_2016.svg.png'),
                  companyName: 'Taco Bell',
                  value: '\$10',
                ),
                GiftCardsTabWidgets(
                  image: Image.network(
                      'https://play-lh.googleusercontent.com/cShys-AmJ93dB0SV8kE6Fl5eSaf4-qMMZdwEDKI5VEmKAXfzOqbiaeAsqqrEBCTdIEs'),
                  companyName: 'Spotify',
                  value: '\$15',
                ),
                GiftCardsTabWidgets(
                  image: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/YouTube_social_white_squircle_%282017%29.svg/220px-YouTube_social_white_squircle_%282017%29.svg.png'),
                  companyName: 'Youtube',
                  value: '\$5',
                ),
                GiftCardsTabWidgets(
                  image: Image.network(
                      'https://hbomax-images.warnermediacdn.com/2020-05/square%20social%20logo%20400%20x%20400_0.png'),
                  companyName: 'HBO Max',
                  value: '\$20',
                ),
              ],
            ),
          ),
          const Text('In Progress'),
        ],
      ),
    );
  }
}

class GiftCardsTabWidgets extends StatelessWidget {
  const GiftCardsTabWidgets({
    required this.image,
    required this.companyName,
    required this.value,
    super.key,
  });

  final Image image;
  final String companyName;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 30,
              child: image,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(companyName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                  ],
                ),
                const Text('Gift card'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TabBar(
        indicatorColor: Colors.black,
        indicatorWeight: 0.9,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        labelColor: Colors.black,
        tabs: [
          Tab(
            text: 'Gift cards',
          ),
          Tab(
            text: 'Rewards',
          ),
        ],
      ),
    );
  }
}

class CircularPercentIndicatorWidget extends StatelessWidget {
  const CircularPercentIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 1000,
      radius: 150,
      lineWidth: 4,
      percent: 0.8,
      progressColor: Colors.white,
      maskFilter: const MaskFilter.blur(BlurStyle.solid, 5.5),
      backgroundWidth: 1,
      circularStrokeCap: CircularStrokeCap.square,
      center: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Text(
                      '7.356',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    Text(
                      'Steps',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '209 Kcal',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 40),
                        Text(
                          '3.5 Km',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class StepAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StepAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      title: const Text(
        'Home  |',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 62),
          child: IconButton(
            icon: const Icon(
              Icons.mode_edit_outline,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          height: 80,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromARGB(151, 255, 255, 255),
              ),
              bottom: BorderSide(
                color: Color.fromARGB(151, 255, 255, 255),
              ),
            ),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'We reward you for up to',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
                  ),
                  maxLines: 1,
                ),
                Text(
                  '25 coins every 2000 steps',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 80);
}
