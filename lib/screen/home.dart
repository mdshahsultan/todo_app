import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List ToDoList = [{"1":"1"},{"1":"1"},{"1":"1"}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: Text("To Do App"),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                      //flex: 70,
                        child: TextFormField()
                    ),
                    Expanded(
                      //flex: 30,
                        child: ElevatedButton(onPressed: (){}, child: Text("Done"))
                    ),
                  ],
                )
            ),
            Expanded(
                flex: 90,
                child: ListView.builder(
                    itemCount: ToDoList.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: Text("List"),
                      );
                    }
                ),
            ),
          ],
        ),
      ),
    );
  }
}
