import 'package:flutter/material.dart';

class CheckOutWidget extends StatelessWidget {
  const CheckOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              children: [
                Text("Sub Total", style: TextStyle(color: Colors.grey)),
                Spacer(),
                Text("\$351", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text("Delivery Free", style: TextStyle(color: Colors.grey)),
                Spacer(),
                Text("\$5", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text("Taxes", style: TextStyle(color: Colors.grey)),
                Spacer(),
                Text("\$2.5", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 8),
            Divider(),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  "Sub Total",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Spacer(),
                Text(
                  "\$351",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  "Check Out",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}