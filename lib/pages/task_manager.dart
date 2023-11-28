import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

int currentIndex = 0;

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xff6E66D7),
              Color(0xff4530B3),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: const SafeArea(
          child: Column(
            children: [
              // Row 1
              FirstRow(),
              // Row 2
              WelcomeMessage(),
              // Container
              TaskWidget(),
              SizedBox(height: 10),
              MonthlyReview(),
              TaskReview(),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Review',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: 'Notification',
          )
        ],
      ),
    );
  }
}

class TaskReview extends StatelessWidget {
  const TaskReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                width: 150,
                height: 140,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 90, 235),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '22',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.58),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                width: 150,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 90, 235),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '10',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Ongoing',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.58),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                width: 150,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 90, 235),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '7',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'In progress',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.58),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                width: 150,
                height: 140,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 90, 235),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '22',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Waiting for Review',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.58),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MonthlyReview extends StatelessWidget {
  const MonthlyReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Monthly Review',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff22D1FF),
            ),
            child: const Icon(
              Icons.calendar_month,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: const Color.fromARGB(255, 92, 90, 235),
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mobile App Design',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Frodo and Gandalf',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.58),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 75,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://static.wikia.nocookie.net/lotr/images/3/32/Frodo_%28FotR%29.png/revision/latest?cb=20221006065757'),
                          radius: 20,
                        ),
                      ),
                      Positioned(
                        left: 29,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://static.wikia.nocookie.net/lotr/images/e/e7/Gandalf_the_Grey.jpg/revision/latest?cb=20121110131754'),
                            radius: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.58),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Hi Bilbo',
                style: GoogleFonts.adamina(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const Text(
                '6 Task are pending',
                style: TextStyle(color: Color(0xffB5D6E7), fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 40,
          ),
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://fwcdn.pl/fcp/22/42/662242/12561.1.jpg'),
              radius: 20,
            ),
          )
        ],
      ),
    );
  }
}
