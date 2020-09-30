import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/SQlLiteDatabase/coursedetails.dart';
import 'package:flutter_first_app/SQlLiteDatabase/courseupdate.dart';
import 'package:flutter_first_app/SQlLiteDatabase/dbhelper.dart';
import 'package:flutter_first_app/SQlLiteDatabase/model/course.dart';
import 'package:flutter_first_app/SQlLiteDatabase/newcourse.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DbHelper helper;
  TextEditingController teSearch = new TextEditingController();
  var allCourses = [];
  var items = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    helper = DbHelper();
    helper.allCourses().then((value) {
      setState(() {
        allCourses = value;
        items = allCourses;
      });
    });
  }

  void filSearch(String query) async {
    var dummySearchLsit = allCourses;
    if (query.isNotEmpty) {
      var dummyListData = List();
      dummySearchLsit.forEach((element) {
        var course = Course.fromMap(element);
        if (course.name.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(element);
        }
      });

      setState(() {
        items = [];
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items = [];
        items = allCourses;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqlite Database"),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NewCourse();
                }));
              }),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  filSearch(value);
                });
              },
              controller: teSearch,
              decoration: InputDecoration(
                  hintText: "Search...",
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                Course course = Course.fromMap(items[index]);
                return Card(
                  margin: EdgeInsets.all(8),
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: ListTile(
                      title: Text(
                          "${course.name} - ${course.hours} hours - ${course.level}"),
                      subtitle: Text(course.content),
                      trailing: Column(
                        children: [
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  helper.delete(course.id);
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return CourseUpdate(course);
                                  },
                                ));
                              },
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return CourseDetails(course);
                          },
                        ));
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),

      // We use FutureBuilder When don't need to do Search in our list
      /*FutureBuilder(
        future: helper.allCourses(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                Course course = Course.fromMap(snapshot.data[index]);
                return Card(
                  margin: EdgeInsets.all(8),
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: ListTile(
                      title: Text(
                          "${course.name} - ${course.hours} hours - ${course.level}"),
                      subtitle: Text(course.content),
                      trailing: Column(
                        children: [
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  helper.delete(course.id);
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return CourseUpdate(course);
                                  },
                                ));
                              },
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return CourseDetails(course);
                          },
                        ));
                      },
                    ),
                  ),
                );
              },
            );
          }
        },
      )*/
    );
  }
}
