import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              init: CounterController(),
              builder: (controller) {
                return Text(
                  'Count: ${controller.count}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.find<CounterController>().increment();
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}