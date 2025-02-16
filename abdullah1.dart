import 'package:flutter/material.dart';


class MainWidget extends StatelessWidget {
  const MainWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          RowWidget(),
          SizedBox(height: 20),
          RowAndColumnWidget(),
          SizedBox(height: 20),
          RowAndStackWidget(),
        ],
      ),
    );
  }
}



class RowWidget extends StatelessWidget {
  const RowWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.yellow,
          height: 40,
          width: 40,
        ),
        const Padding(padding: EdgeInsets.all(16.0)),
        Container(
          color: Colors.brown,
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}


class RowAndColumnWidget extends StatelessWidget {
  const RowAndColumnWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Icon(Icons.star, color: Colors.amber),
              Text('Rating: 4.5'),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Icon(Icons.access_time, color: Colors.blue),
              Text('Open Now'),
            ],
          ),
        ),
      ],
    );
  }
}

class RowAndStackWidget extends StatelessWidget {
  const RowAndStackWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            Container(
              color: Colors.green,
              height: 60,
              width: 100,
            ),
            Container(
              color: Colors.red,
              height: 60,
              width: 100,
            ),
          ],
        ),
        const Positioned(
          child: Icon(Icons.warning, color: Colors.white, size: 30),
        ),
      ],
    );
  }
}
