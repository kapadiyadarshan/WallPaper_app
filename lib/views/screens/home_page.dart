import 'package:flutter/material.dart';
import 'package:wallpaper_app/helpers/Api_Helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: FutureBuilder(
            future: ApiHelper.apiHelper.getStringAllData(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(snapShot.data![index].id.toString()),
                        ),
                        title: Text(snapShot.data![index].title),
                        subtitle: Text(snapShot.data![index].body),
                      ),
                    );
                  },
                  itemCount: snapShot.data!.length,
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
