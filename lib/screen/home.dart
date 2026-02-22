import 'package:flutter/material.dart';

import '../style/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List ToDoList = [];
  String item = "";

  MyInputOnChange(content){
    setState(() {
      item = content;
      //ToDoList.add({"item": content});
    });
  }

  AddItem(){
    ToDoList.add({"item": item});
  }

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
                      flex: 70,
                        child: TextFormField(onChanged: (content) {MyInputOnChange(content);}, decoration: AppInputDecoration("List Item"),)
                    ),
                    Expanded(
                      flex: 30,
                        child: Padding(padding: EdgeInsets.only(left: 5), child: ElevatedButton(onPressed: (){AddItem();}, child: Text("Add"), style: AppButtonStyle(),),)
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
                        child: SizeBox50(
                          Row(
                            children: [
                              Expanded(
                                  flex: 80,
                                  child: Text(ToDoList[index]["item"].toString()),
                              ),
                              Expanded(
                                  flex: 20,
                                  child: TextButton(onPressed: (){}, child: Icon(Icons.delete),)
                              ),
                            ],
                          )
                        ),
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
