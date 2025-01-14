import 'package:flutter/material.dart';
import 'package:userapp/pages/newspage.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child:  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),

          TabBar(
            padding: EdgeInsets.symmetric(horizontal: 20),
            tabs: [

              Text('news'),
              Text('Videos'),
              Text('Tables'),
            ],

          ),
          Expanded(child: TabBarView(
            children: [
              NewsPage()

            ],
          ),)
        ],
      ),
      ),

    );
  }
}
