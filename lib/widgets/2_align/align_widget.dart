import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Align Widget'),
      ),
      body: SingleChildScrollView(
        // child: Column(
        //   children: [
        //     Container(
        //       width: double.infinity,
        //       height: 200.0,
        //       color: const Color(0xffff9e00),
        //       child: const Align(
        //         alignment: Alignment.bottomCenter,
        //         child: TextWidget(),
        //       ),
        //     ),
        //     const SizedBox(height: 10.0),
        //     Container(
        //       width: double.infinity,
        //       height: 200.0,
        //       color: const Color(0xffff500c),
        //       child: const Align(
        //         alignment: Alignment(-0.40, 0.90),
        //         child: TextWidget(),
        //       ),
        //     ),
        //   ],
        // ),
        child: SizedBox(
          height: 500,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: const Color(0xffff9e00),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: TextWidget(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: const Color(0xffff500c),
                  child: const Align(
                    alignment: Alignment(-0.40, 0.90),
                    child: TextWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Hello Instagram!",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
