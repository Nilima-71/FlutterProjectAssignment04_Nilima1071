import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 234, 235),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: 220,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 82, 2, 96),
                  ),
                  //borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      const Color.fromARGB(255, 146, 114, 197),
                      const Color.fromARGB(255, 196, 119, 210),
                    ],
                  ),
                ),

                child: Text(
                  "International English Testing System",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lobster(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 236, 198, 127),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 12,
                runSpacing: 12,
                children: [
                  SizedBox(
                    height: 110,
                    width: 130,
                    child: Card(
                      color: Colors.cyan,
                      shadowColor: Colors.deepPurple,
                      margin: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          "Listening",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 110,
                    width: 130,
                    child: Card(
                      color: const Color.fromARGB(255, 63, 104, 209),
                      shadowColor: Colors.deepPurple,
                      margin: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          "Reading",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 110,
                    width: 130,
                    child: Card(
                      color: const Color.fromARGB(255, 180, 223, 130),
                      shadowColor: Colors.deepPurple,
                      margin: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          "Writing",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 110,
                    width: 130,
                    child: Card(
                      color: const Color.fromARGB(255, 167, 50, 69),
                      shadowColor: Colors.deepPurple,
                      margin: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          "Speaking",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
