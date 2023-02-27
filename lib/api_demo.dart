import 'dart:convert';

import 'package:flutter/material.dart';
  import 'package:http/http.dart' as http;


class ApiDemo extends StatefulWidget {
  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Api'),
      ),
      body: FutureBuilder<dynamic>(
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child:
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(snapshot.data![index]['Country'].toString()),
                            Text(snapshot.data![index]['time'].toString()),
                            Text(snapshot.data![index]['price'].toString()),
                            Text(snapshot.data![index]['flightname'].toString()),
                          ],
                        ),
                        TextButton(onPressed: () {
                          Icon(Icons.arrow_forward_ios);
                        }, child: Container(color: Colors.orange,))
                      ],
                    ),
                  );
                },
                itemCount: snapshot.data!.length,
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          future: callApi()),
    );
  }

  Future<dynamic> callApi() async {
    http.Response res = await http.get(
        Uri.parse('https://630ecbf3498924524a7fb8ff.mockapi.io/Faculties'));
    return jsonDecode(res.body.toString());
  }
}
