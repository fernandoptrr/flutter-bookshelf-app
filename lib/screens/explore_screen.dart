import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  static const nameRoute = '/explore';

  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Under Construction \nš·āāļøš§š·āāļø',
          style: Theme.of(context).textTheme.headline1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
