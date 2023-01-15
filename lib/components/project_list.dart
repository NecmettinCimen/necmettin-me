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
      var response = await http.get(Uri.parse(
          "https://api.github.com/users/${Strings.githubUserName}/repos"));
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
          .where((element) =>
              element.name!.toLowerCase().contains(text.toLowerCase()) ||
              (element.description ?? "")
                  .toLowerCase()
                  .contains(text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    list
                            .where((element) =>
                                element.homepage != null &&
                                element.homepage != "")
                            .length
                            .toString() +
                        " LIVE PROJECT! YOU CAN VISIT :)",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: TextField(
                  decoration: const InputDecoration(hintText: "Search"),
                  onChanged: searchOnChange,
                ),
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      var item = list[index];
                      return Card(
                        child: ListTile(
                          leading: Image.network(
                            Assets.github,
                            color: const Color(0xFF45405B),
                          ),
                          title: Text((item.name ?? "").toLowerCase()),
                          subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(item.description ?? ""),
                                Text(timeago.format(
                                    DateTime.parse(item.createdAt ?? ""))),
                                Visibility(
                                  visible: item.homepage != null ||
                                      item.homepage != "",
                                  child: TextButton(
                                    child: Text(item.homepage ?? ""),
                                    onPressed: () async {
                                      var uri = Uri.parse(item.homepage ?? "");
                                      await launchUrl(uri);
                                    },
                                  ),
                                )
                              ]),
                          trailing: TextButton(
                            child: const Text("Github"),
                            onPressed: () async {
                              var uri = Uri.parse(item.htmlUrl ??
                                  "https://github.com/necmettincimen");
                              await launchUrl(uri);
                            },
                          ),
                        ),
                      );
                    }),
              ),
            ],
          );
  }
}
