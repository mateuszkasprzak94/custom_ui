import 'package:flutter/material.dart';

class BankPage extends StatefulWidget {
  const BankPage({super.key});

  @override
  State<BankPage> createState() => _BankPageState();
}

class _BankPageState extends State<BankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFcef1e5),
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(40))),
                child: const Icon(Icons.notifications_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(40))),
                child: const Icon(Icons.person)),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFcef1e5)),
        child: const Column(
          children: [
            CreditCardWidget(),
            TotalBalanceWidget(),
            AccountNumberWidget(),
            SizedBox(height: 20),
            UsdWidget(),
            SizedBox(height: 20),
            FunctionButtons(),
            SizedBox(height: 30),
            SendTo(),
            SizedBox(height: 10),
            SendToMembers(),
            CustomPayOne(),
            CustomPayTwo()
          ],
        ),
      ),
    );
  }
}

class CustomPayTwo extends StatelessWidget {
  const CustomPayTwo({
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
          Radius.circular(10),
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
          Icon(Icons.arrow_upward),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('From Peter D.'),
              Text('Today, 11:12'),
            ],
          ),
          SizedBox(width: 120),
          Text(
            '-\$200',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class CustomPayOne extends StatelessWidget {
  const CustomPayOne({
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
          Radius.circular(10),
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
          Icon(Icons.arrow_downward),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('From Jordan R.'),
              Text('Today, 17:10'),
            ],
          ),
          SizedBox(width: 120),
          Text(
            '-\$200',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class SendToMembers extends StatelessWidget {
  const SendToMembers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 10),
        Column(
          children: [
            FloatingActionButton.small(
              backgroundColor: Colors.white,
              onPressed: () {},
              shape: const CircleBorder(side: BorderSide.none),
              child: const Icon(Icons.person),
            ),
            const Text('NAME'),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            FloatingActionButton.small(
              backgroundColor: Colors.white,
              onPressed: () {},
              shape: const CircleBorder(side: BorderSide.none),
              child: const Icon(Icons.person),
            ),
            const Text('NAME'),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            FloatingActionButton.small(
              backgroundColor: Colors.white,
              onPressed: () {},
              shape: const CircleBorder(side: BorderSide.none),
              child: const Icon(Icons.person),
            ),
            const Text('NAME'),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            FloatingActionButton.small(
              backgroundColor: Colors.white,
              onPressed: () {},
              shape: const CircleBorder(side: BorderSide.none),
              child: const Icon(Icons.person),
            ),
            const Text('NAME'),
          ],
        ),
      ],
    );
  }
}

class SendTo extends StatelessWidget {
  const SendTo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Last Recepients',
            style: TextStyle(
                fontSize: 20,
                color:
                    const Color.fromARGB(255, 147, 179, 148).withOpacity(0.9)),
          ),
          const Text(
            'Send to',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class FunctionButtons extends StatelessWidget {
  const FunctionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 107, 151, 136),
          shape: const CircleBorder(side: BorderSide.none),
          onPressed: () {},
          child: const Icon(
            Icons.arrow_upward,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 30),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 107, 151, 136),
          shape: const CircleBorder(side: BorderSide.none),
          onPressed: () {},
          child: const Icon(
            Icons.arrow_downward,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 30),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 107, 151, 136),
          shape: const CircleBorder(side: BorderSide.none),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class UsdWidget extends StatelessWidget {
  const UsdWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '40 540.74',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 10),
        Text(
          'USD',
          style: TextStyle(
              fontSize: 30,
              color: const Color.fromARGB(255, 147, 179, 148).withOpacity(0.9)),
        ),
      ],
    );
  }
}

class AccountNumberWidget extends StatelessWidget {
  const AccountNumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 234, 247, 242),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.circle_outlined),
            Text(
              '**** 5482',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

class TotalBalanceWidget extends StatelessWidget {
  const TotalBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 15),
      child: const Text(
        'Total Balance',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      ),
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        'Credit Card',
        style: TextStyle(
            fontSize: 20,
            color: const Color.fromARGB(255, 147, 179, 148).withOpacity(0.9)),
      ),
    );
  }
}
