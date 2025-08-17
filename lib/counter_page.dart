

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Positioned.fill(
//             child: Image.asset('images/24.jpg')
//
//           ),
//
//           // Optional Color Overlay (e.g. black with 50% opacity)
//           // Positioned.fill(
//           //   child: Container(
//           //     color: Colors.black.withOpacity(0.5),
//           //   ),
//           // ),
//
//           // Foreground content (Counter UI)
//           Center(
//             child: Padding(
//               padding: EdgeInsets.only(top: 1.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                                             "Counter App",
//                     style: TextStyle(color: Colors.amber, fontSize: 22),
//                   ),
//                   Text(
//                     _counter.toString(),
//                     style: const TextStyle(color: Colors.red, fontSize: 200),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: _resetCounter,
//                         child: const Icon(Icons.restore),
//                       ),
//                       ElevatedButton(
//                         onPressed: _incrementCounter,
//                         child: const Icon(Icons.add),
//                       ),
//                       ElevatedButton(
//                         onPressed: _decrementCounter,
//                         child: const Icon(Icons.remove),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//
//       ),
//
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter App",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Text(
              _counter.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _resetCounter();
                  },
                  child: const Icon(Icons.restore),
                ),
                ElevatedButton(
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    _decrementCounter();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
