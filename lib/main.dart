import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(children: [
             Center(child: Text("home screen"),),
             Center(child: Text("Searc screen"),),
             Center(child: Text("Setting screen"),),
          ],),
          bottomNavigationBar:  TabBar(
            physics: BouncingScrollPhysics(),
             unselectedLabelColor: Colors.amber,
              tabs: [
                Tab(
                  icon: Icon(Icons.home_filled),

                ),
                Tab(
                  icon: Icon(Icons.search_outlined),
                  
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  
                )
              ],
            ),

        ),
      )
    );
  }
}
