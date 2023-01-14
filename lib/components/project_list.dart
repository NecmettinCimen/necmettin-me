import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:necport/constants/strings.dart';
import 'package:necport/models/repos.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../constants/assets.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  bool loading = true;
  List<Repos> fullList = [];
  List<Repos> list = [];
  @override
  void initState() {
    super.initState();
    getList();
  }

  getList() async {
    try {
      var response = await http.get(Uri.parse("https://api.github.com/users/${Strings.githubUserName}/repos"));
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
        setState(() {
          list = parsed.map<Repos>((json) => Repos.fromJson(json)).toList();
          fullList = list;
        });
      }
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  searchOnChange(String text) {
    setState(() {
      list = fullList
          .where(
              (element) => element.name!.toLowerCase().contains(text.toLowerCase()) || (element.description ?? "").toLowerCase().contains(text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              SizedBox(
                height: 100,
                child: TextField(
                  decoration: InputDecoration(hintText: "Search"),
                  onChanged: searchOnChange,
                ),
              ),
              SizedBox(
                height: 500,
                child: GridView.count(
                  crossAxisCount: 5,
                  children: List.generate(list.length, (index) {
                    var item = list[index];
                    return Card(
                      child: Column(
                        children: [
                          Image.network(
                            Assets.github,
                            color: Color(0xFF45405B),
                            height: 220.0,
                            width: 220.0,
                          ),
                          ListTile(
                            title: Text((item.name ?? "").toLowerCase()),
                            subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                              Text(item.description ?? ""),
                              Text(timeago.format(DateTime.parse(item.createdAt ?? ""))),
                            ]),
                            trailing: TextButton(
                              child: Text("Show"),
                              onPressed: () async {
                                var uri = Uri.parse(item.htmlUrl ?? "https://github.com/necmettincimen");
                                await launchUrl(uri);
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          );
  }
}
