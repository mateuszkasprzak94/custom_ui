import 'package:custom_switch_widget/custom_switch_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final CustomSwitchController _controller = CustomSwitchController();

void _enable() => _controller.enable();

void _disable() => _controller.disable();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color.fromARGB(255, 156, 197, 209),
              Color.fromARGB(255, 81, 120, 248),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                    CustomSwitchWidget(
                      controller: _controller,
                      activeColor: Colors.grey,
                      inactiveColor: Colors.amber,
                      onChange: (value) {
                        if (value) {
                          _disable();
                        } else {
                          _enable();
                        }
                      },
                    ),
                  ],
                ),
              ),
              const FirstWidget(),
              const MiddleWidget(),
              const BottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 16,
              ) +
              const EdgeInsets.only(top: 16),
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(32),
            ),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF67DED3),
                Color(0xFF51A8FD),
              ],
              tileMode: TileMode.mirror,
            ),
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '20°',
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chełm',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Monday 21/23',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Icon(
                      Icons.air,
                      color: Color.fromARGB(60, 255, 255, 255),
                      size: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned.fill(
          left: 32,
          top: 0,
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 200,
              height: 150,
              child: Image.network(
                  'https://freepngimg.com/thumb/categories/2275.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          // Headline
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Weather details'.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.refresh,
                color: Colors.black45,
                size: 32,
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Grid
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridDetails(icon: Icons.ac_unit),
              GridDetails(icon: Icons.sunny),
              GridDetails(icon: Icons.wind_power),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridDetails(icon: Icons.air),
              GridDetails(icon: Icons.snowing),
              GridDetails(icon: Icons.ac_unit_rounded),
            ],
          )
        ],
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GridDetailsBottom(
            text: 'Wind',
            icon: Icons.air,
            iconFirstColor: Colors.grey,
            degrees: '10°',
            bottomIcon: Icons.water_drop,
            iconColor: Colors.grey,
          ),
          GridDetailsBottom(
            text: 'Snow',
            icon: Icons.snowing,
            iconFirstColor: Colors.blue,
            degrees: '-10°',
            bottomIcon: Icons.water_drop,
            iconColor: Colors.grey,
          ),
          GridDetailsBottom(
            text: 'Sunny',
            icon: Icons.sunny,
            iconFirstColor: Colors.amber,
            degrees: '20°',
            bottomIcon: Icons.water_drop,
            iconColor: Colors.grey,
          ),
          GridDetailsBottom(
            text: 'Rain',
            icon: Icons.water_drop,
            iconFirstColor: Colors.blue,
            degrees: '9°',
            bottomIcon: Icons.water_drop,
            iconColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class GridDetailsBottom extends StatelessWidget {
  const GridDetailsBottom({
    required this.text,
    required this.icon,
    required this.iconFirstColor,
    required this.degrees,
    required this.bottomIcon,
    required this.iconColor,
    super.key,
  });

  final String text;
  final Color iconFirstColor;
  final IconData icon;
  final String degrees;
  final IconData bottomIcon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Icon(
          icon,
          color: iconFirstColor,
        ),
        const SizedBox(height: 10),
        Text(degrees,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        const SizedBox(height: 10),
        Icon(
          bottomIcon,
          color: iconColor,
        ),
      ],
    );
  }
}

class GridDetails extends StatelessWidget {
  const GridDetails({
    required this.icon,
    super.key,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.cyan,
        ),
        const SizedBox(height: 4),
        const Text(
          'Wind',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 4),
        const Text(
          '10km/h',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
