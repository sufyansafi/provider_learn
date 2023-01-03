import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/appstate.dart';
import 'package:provider_learn/model.dart';

import 'getUtil.dart';

class Fake extends StatelessWidget {
  const Fake({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<App>(
      builder: (context, provider1, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("fakenjson api get"),
          ),
          backgroundColor: Colors.blueGrey,
          body: provider1.listformdata.isEmpty
              ? const Center(
                  child: Text("there fore api dont response now"),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      // ignore: unnecessary_string_interpolations
                      title: Text("${provider1.listformdata[index].title }" ),
                      leading: Text(provider1.listformdata[index].body),
                      trailing:  Text("${provider1.listformdata[index].id }"),
                      
                    );
                  },
                  itemCount: provider1.listformdata.length,
                ),
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () async {
                List<Get> data = await DataChahye().getdata();
                provider1.updateGET(data);
              },
              label: const Text("Update me to click")),
        );
      },
    );
  }
}