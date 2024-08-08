import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/widget/feeling_button.dart';
import 'package:mental_health_app/features/meditation/presentation/widget/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset(
          'assets/images/menu_burger',
          //fit: BoxFit.cover,
          //height: 15,
          //width: 15,
        ),
        actions:  const [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/profile.png',
            ),
          ),
          SizedBox(
            width: 16,
          ),

        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back, Sabrina!",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "How are you feeling today ?",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeelingButton(
                    color: DefaultColors.pink,
                    image: "assets/images/happy.png",
                    label: "happy",
                  ),
                  FeelingButton(
                    color: DefaultColors.purple,
                    image: "assets/images/calm.png",
                    label: "Calm",
                  ),
                  FeelingButton(
                    color: DefaultColors.orange,
                    image: "assets/images/relax.png",
                    label: "Relax",
                  ),
                  FeelingButton(
                    color: DefaultColors.lightteal,
                    image: "assets/images/focus.png",
                    label: "Focus",
                  ),
                  //Image.asset("assets/images/calm.png", height: 25,),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text("Today\'s Task",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16,),
              TaskCard(
                  color: DefaultColors.task1,
                  title: "Morning",
                  description: "Let's open up to the thing that matters among the people",
              ),
              SizedBox(height: 16,),
              TaskCard(
                  color: DefaultColors.task2,
                  title: "Noon",
                  description: "Let's open up to the thing that matters among the people",
              ),
              SizedBox(height: 16,),
              TaskCard(
                  color: DefaultColors.task3,
                  title: "Evening",
                  description: "Let's open up to the thing that matters among the people",
              ),
            ],
          ),
        ),
      ),

    );
  }
}
