import 'package:flutter/material.dart';
import 'package:responsive_design/app_colors.dart';

class ExpandedFlexibleLayout extends StatelessWidget {
  const ExpandedFlexibleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(8),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        FlexibleWidget(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ExpandedWidget(),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      color: Colors.orange,
                      height: 120,
                      padding: const EdgeInsets.all(8),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              ExpandedWidget(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: AppColors.greenAccent,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Center(
                            child: Text("kadsjfbjdkashbfjadsfsfsfhb")),
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

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.darkGreen,
          border: Border.all(color: Colors.white),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.greenAccent,
          border: Border.all(color: Colors.white),
        ),
        child: const Text("skfdjnbskljfbskldjbvksdjb"),
      ),
    );
  }
}
