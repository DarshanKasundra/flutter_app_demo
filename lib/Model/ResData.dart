import 'ListEvent.dart';

class ResData {
  List<ListEvent> listEvent;

  ResData({this.listEvent});

  ResData.fromJson(Map<String, dynamic> json) {
    if (json['list_event'] != null) {
      listEvent = new List<ListEvent>();
      json['list_event'].forEach((v) {
        listEvent.add(new ListEvent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listEvent != null) {
      data['list_event'] = this.listEvent.map((v) => v.toJson()).toList();
    }
    return data;
  }
}