import 'package:flutter/material.dart';
import 'package:state_flutter/models/plan.dart';
import 'package:state_flutter/provider/plan_provider.dart';
import './views/plan_screen.dart';

void main () => runApp (const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'Master Plan Wayy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PlanScreen(),
      )
    );
  }
}