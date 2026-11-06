import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  double result = 0;
  final double usdToBdtRate = 120.0; // কনভার্সন রেট

  // কারেন্সি কনভার্ট করার মেথড
  void convertCurrency() {
    if (_formKey.currentState!.validate()) {
      double amount = double.tryParse(controller.text) ?? 0;
      setState(() {
        result = amount * usdToBdtRate;
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Converter")),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: Colors.lightGreen,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "USD",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.swap_horiz),
                      Text(
                        "BDT",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          decoration: const InputDecoration(
                            labelText: "Amount",
                            hintText: "Enter amount",
                            prefixIcon: Icon(Icons.monetization_on),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Field is empty";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),

                        // ১. ইমেজ অনুযায়ী Convert বাটন যুক্ত করা হলো
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: convertCurrency,
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.blueAccent, // বাটনের কালার
                            ),
                            child: const Text(
                              "Convert",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),

                        // ২. ইমেজ অনুযায়ী BDT 0 ফলাফল দেখানোর টেক্সট যুক্ত করা হলো
                        Text(
                          "BDT ${result.toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
