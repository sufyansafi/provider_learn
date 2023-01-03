// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_learn/learn%20provider/countermodel.dart';
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//         create: (_) => MainModel(),
//         child: Consumer<MainModel>(
//             builder: (context, model, child) => Scaffold(
//               appBar: AppBar(
//                 title: Text(widget.title),
//               ),
//               body: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     const Text(
//                       'You have pushed the button this many times:',
//                     ),
//                     Text(
//                       '${model.counter}',
//                       style: Theme.of(context).textTheme.headline4,
//                     ),
//                   ],
//                 ),
//               ),
//               floatingActionButton: FloatingActionButton(
//                 onPressed: () => model.counter++,
//                 tooltip: 'Increment',
//                 child: const Icon(Icons.add),
//               ),
//             )));
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/firstpage.dart';
import 'package:provider_learn/secondpage.dart';

import 'learn provider/countermodel.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    // MyProvider provider = Provider.of<MyProvider>(context);
    var provider = Provider.of<MyProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("try to learn proovider"),
      ),
      body: Consumer<MyProvider>(builder: (context, providervalue, child) {
        return providervalue.change ? const FirstPage() : SecondPage();
      }),
      floatingActionButton: FloatingActionButton.large(
        child: const Text(
          "click me",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          provider.updateWidget();
        },
        backgroundColor: Colors.black,
      ),
    );
  }
}
//Center(
      //   child: Consumer<MyProvider>(
      //     builder: (context, providerValue, child) {
      //       return Column(
      //         children: [
      //           Text(
      //             "${providerValue.name}",
      //             style: const TextStyle(color: Colors.black, fontSize: 20),
      //           ),
      //           ElevatedButton(
      //             onPressed: () {
      //               providerValue.getUpdateName(
      //                   "Alahamdullialh flutter developer INSHALLAH");
      //             },
      //             child: Text("clik me to update"),
      //           )
      //         ],
      //       );
      //     },
      //   ),
      // ),