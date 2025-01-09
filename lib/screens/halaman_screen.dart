import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.grey[300],
              child: Center(child: Text('Image Placeholder')),
            ),
            SizedBox(height: 20),
            Text(dataProvider.message),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: "Sign in",
                  onPressed: () {
                    // Handle Sign in
                  },
                ),
                SizedBox(width: 10),
                CustomButton(
                  text: "Sign up",
                  onPressed: () {
                    // Handle Sign up
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
