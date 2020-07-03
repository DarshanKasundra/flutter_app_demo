import 'package:flutter_app_demo/Model/ApiResponce.dart';
import 'package:flutter_app_demo/api_service.dart';
import 'package:flutter_app_demo/network/api_service.dart';
import 'package:flutter_app_demo/network/model/task_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API TEST"),
      ),
      body: _listFutureTasks(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final api = Provider.of<ApiService>(context, listen: false);
          api.getTasks().then((it) {
            it.forEach((f) {
//              print(f.title);
            });
          }).catchError((onError){
            print(onError.toString());
          });
        },
        child: Icon(Icons.terrain),
      ),
    );
  }

  FutureBuilder _listFutureTasks(BuildContext context) {
    return FutureBuilder<List<ApiResponce>>(
      future: Provider.of<ApiService>(context, listen: false).getTasks(),
      builder: (BuildContext context, AsyncSnapshot<List<ApiResponce>> snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          if(snapshot.hasError) {
            return Container(
              child: Center(
                child: Text("Something wrond"),
              ),
            );
          }
          final tasks = snapshot.data;
          return _listTasks(context: context, tasks: tasks);

        } else {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  ListView _listTasks({BuildContext context, List<ApiResponce> tasks}) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
//                leading: Image.network(tasks[index].resData.listEvent),
                title: Text(tasks[index].resMessage),
              ),
            ),
          );
        });
  }
}