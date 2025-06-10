import 'package:flutter/material.dart';

void main() {
  runApp(const ExplicitAnimationScreen());
}

class ExplicitAnimationScreen extends StatefulWidget {
  const ExplicitAnimationScreen({super.key});

  @override
  State<ExplicitAnimationScreen> createState() =>
      _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Explicit Animation'),
        backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Center(
              child: RotationTransition(turns: AlwaysStoppedAnimation(0),
                    child: Icon(Icons.refresh, size: 100,)
              ,),
            ),

            Spacer(),

            ElevatedButton(onPressed: (){}, child: const Text("Animate")),
          ],
        ),
      ),
    );
  }
}
