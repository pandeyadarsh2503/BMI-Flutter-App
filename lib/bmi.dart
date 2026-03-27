import 'package:flutter/material.dart';
import 'splash.dart';

class BmiPage extends StatefulWidget {
  final String name;
  const BmiPage(this.name, {super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final wtController = TextEditingController();
  final ftController = TextEditingController();
  final inController = TextEditingController();
  String result = "";
  Color bgcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("BMI",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700)),
                const SizedBox(height:50),
                Text("Welcome, ${widget.name}",
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                const SizedBox(height: 50),
                const SizedBox(height: 20),
                TextField(
                  controller: wtController,
                  decoration: const InputDecoration(
                    label: Text("Enter Your Weight (kg)"),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: ftController,
                  decoration: const InputDecoration(
                    label: Text("Enter Height (feet)"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: inController,
                  decoration: const InputDecoration(
                    label: Text("Enter Height (inch)"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    final wt = wtController.text.trim();
                    final ft = ftController.text.trim();
                    final inch = inController.text.trim();

                    if (wt.isNotEmpty && ft.isNotEmpty && inch.isNotEmpty) {
                      final iWt = int.parse(wt);
                      final iFt = int.parse(ft);
                      final iInch = int.parse(inch);

                      final tInch = (iFt * 12) + iInch;
                      final tCm = tInch * 2.54;
                      final tM = tCm / 100;
                      final bmi = iWt / (tM * tM);
                      String msg;
                      Color newColor;

                      if (bmi > 25) {
                        msg = "You're OverWeight!";
                        newColor = Colors.orange.shade400;
                      } else if (bmi < 18) {
                        msg = "You're UnderWeight!";
                        newColor = Colors.red.shade400;
                      } else {
                        msg = "You're Healthy";
                        newColor = Colors.green.shade400;
                      }

                      setState(() {
                        result = "$msg\nYour BMI is: ${bmi.toStringAsFixed(2)}";
                        bgcolor = newColor;
                      });
                    } else {
                      setState(() {
                        result = "Please fill all the required details!!";
                      });
                    }
                  },
                  child: const Text("Calculate"),
                ),
                const SizedBox(height: 20),
                Text(
                  result,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
