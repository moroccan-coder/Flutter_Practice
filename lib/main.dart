
import 'package:flutter/material.dart';
import 'package:flutter_first_app/StateManagement/ShopingCard/home.dart';
import 'package:flutter_first_app/StateManagement/ShopingCard/models/cart.dart';
import 'package:provider/provider.dart';






// -----> StateManagement ShopingCard (Provider)
void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MyApp(),
    )
  );
}




// ---> StateManagement -> Liftingup State
     //main() =>runApp(Home());





// ------> Named Routing
    /*
    main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Named routes',
          initialRoute: '/',
          routes: {
            '/' : (context) =>Home(),
            '/login' : (context) => Login(),
            '/register' : (context) => Register(),

          },
        );
      }
    }
    */









// -----> Simple Routing
    /*main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Home(),
        );
      }
    }*/




// -----> QuizApp
   //main() =>runApp(Home());




// -------> ImageSlider
   // main() => runApp(Home());



// Read/Write in Files
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
*/

//SharedPreferences
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}*/

//Temerature Convertion
/*main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}*/

// FormWithValidation
/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}*/

// ####### Push & Pop Methodes (route->AllAboutPush... ) ###########
/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.ROUTE,
      routes: {
        Home.ROUTE: (c) => Home(),
        Screen1.ROUTE: (cc) => Screen1(),
        Screen2.ROUTE: (ccc) => Screen2(),
        Screen3.ROUTE: (ccc) => Screen3(),
      },
    );
  }
}*/

//######### PasseData ##############""
/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home() /*'package:flutter_first_app/routes/passeData/testt.dart'*/,
    );
  }
}*/

// #### return data from Activity #############
/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.ROUTE,
      routes: {
        Home.ROUTE: (context) => Home(), */ /*'package:flutter_first_app/routes/returndatafromreoute/testt.dart'*/ /*
        Second.ROUTE: (context) => Second(),*/ /* 'package:flutter_first_app/routes/returndatafromreoute/second.dart' */ /*
      },
    );
  }
}*/

// ####### bass param between routes ########"
/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      onGenerateRoute: (settings) {
        if (settings.name == Page2.route) {
          Student s = settings.arguments;
          return MaterialPageRoute(
            builder: (context) => Page2(
              name: s.name,
              age: s.age,
            ),
          );
        }
      },
      routes: {
        Home.route: (context) => Home(),
        Page1.route: (context) => Page1(),
      },
    );
  }
}*/

//############## Routes (pages Package ) #####
/*class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routes
      */ /*routes: {
        '/': (context) => Home(),
        '/second': (context) => Second(),
      }*/ /*,
    );
  }
}*/

// ######### Dialogs ###############
/*main() => runApp(MaterialApp(
      home: Home(),
    ));


var myKey = GlobalKey<ScaffoldState>();

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      appBar: AppBar(
        title: Text("Dialogues"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Alert Dialog"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Exit"),
                        content: Text("Do you Rely want to Exit?"),
                        actions: [
                          RaisedButton(
                            child: Text("Yes"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          RaisedButton(
                            child: Text("No"),
                            onPressed: () {},
                          )
                        ],
                      );
                    });
              },
            ),
            RaisedButton(
              child: Text("Custom Dialogue 1"),
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User Name",
                                style: Theme.of(context).textTheme.headline5,
                                textAlign: TextAlign.center,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: 'Enter your name'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              RaisedButton(
                                child: Text("Save"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            RaisedButton(
              child: Text("Custom Dialogue 2"),
              onPressed: () {
                showDialog(
                    context: (context),
                    builder: (BuildContext context) {
                      return new CustomDialog(
                        "User Profile",
                        "Im a Flutter developper at company amazon",
                        "Agree",
                        Image.asset("assets/images/yss.jpg"),
                      );
                    });
              },
            ),
            RaisedButton(
              child: Text("FullScreen Dialog"),
              onPressed: () {
                showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: MaterialLocalizations.of(context)
                        .modalBarrierDismissLabel,
                    barrierColor: Colors.black,
                    transitionDuration: Duration(milliseconds: 200),
                    pageBuilder: (BuildContext context, Animation first,
                        Animation second) {
                      return Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          height: MediaQuery.of(context).size.height - 40,
                          padding: EdgeInsets.all(20),
                          color: Colors.blueGrey,
                          child: Column(
                            children: [
                              Text(
                                "Payment Methodes",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              RaisedButton(
                                child: Text("Payout"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            RaisedButton(
              child: Text("External Package Dialog"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context)=>FancyDialog(
                    title: 'Don\'t Play around me',
                    descreption: "Please don\'t play with me go away and find some think helpful for you!",
                    gifPath: FancyGif.PLAY_MEDIA,
                    ok: 'OKKK',
                    okColor: Colors.deepPurple,
                    okFun: (){
                      myKey.currentState.showSnackBar(SnackBar(
                        content: Text("Cliked OK"),
                      ));
                    },
                    animationType: FancyAnimation.TOP_BOTTOM,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Consts {
  static const double padding = 16;
  static const double avatarRadius = 66;

  Consts._();
}

class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  CustomDialog(this.title, this.description, this.buttonText, this.image);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Consts.padding)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: Consts.avatarRadius + Consts.padding,
            bottom: Consts.padding,
            left: Consts.padding,
            right: Consts.padding,
          ),
          margin: EdgeInsets.all(Consts.padding),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Consts.padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Consts.padding,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  child: Text(buttonText),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: Consts.padding,
          right: Consts.padding,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: Consts.avatarRadius,
          ),
        )
      ],
    );
  }
}*/

//######### GridView #######
/*class Home extends StatelessWidget {

  var myKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      appBar: AppBar(
        title: Text('My GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: List.generate(100, (index) {
          return Container(
            color: Colors.blueGrey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_bike,size: 50,),
                  Text("Itenm $index"),
                  RaisedButton(child: Icon(Icons.ev_station),onPressed: (){
                    myKey.currentState.showSnackBar(SnackBar(
                      content: Text("Row $index"),
                    ));
                  },)
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}*/

//########### ListView #############
/*class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> entries = [
    "Box 1",
    "Box 2",
    "Box 3",
    "Box 4",
    "Box 5",
    "Box 6",
    "Box 7",
  ];
  final List<int> colorCodes = [
    100,
    200,
    500,
    300,
    600,
    400,
    900,
  ];

  var myKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: myKey,
        appBar: AppBar(
          title: Text("ListView widget"),
        ),
        body: ListView.custom(
            childrenDelegate: SliverChildListDelegate(
          List.generate(100, (index) {
            return Container(
              padding: EdgeInsets.all(4),
              color: Colors.blue,
              margin: EdgeInsets.all(4),
              child: ListTile(
                title: Text("Title $index"),
                subtitle: Text("Subtitle $index"),
                leading: Icon(
                  Icons.directions_bike,
                  color: Colors.white,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white60,
                ),
                onTap: () {
                  myKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("Hi $index"),
                    ),
                  );
                },
                hoverColor: Colors.blueGrey,
                focusColor: Colors.blueGrey,
              ),
            );
          }),
        ))

        */ /*ListView.builder(
          itemCount: entries.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              color: Colors.red[colorCodes[index]],
              margin: EdgeInsets.all(6),
              child: Text(entries[index]),
            );
          },
        )*/ /*

        */ /*ListView(
          children: [
            Container(

              color: Colors.red,
              child: Text("Box 1"),
              height: 200,
              margin: EdgeInsets.all(4),
            ),

            Container(
              color: Colors.yellow,
              child: Text("Box 2"),
              height: 200,
              margin: EdgeInsets.all(4),
            ),
            Container(
              color: Colors.blue,
              child: Text("Box 3"),
              height: 200,
              margin: EdgeInsets.all(4),
            ),
            Container(
              color: Colors.deepPurple,
              child: Text("Box 4"),
              height: 200,
              margin: EdgeInsets.all(4),
            ),
            Container(
              color: Colors.blueGrey,
              child: Text("Box 5"),
              height: 200,
              margin: EdgeInsets.all(4),
            ),
            Container(
              color: Colors.teal,
              child: Text("Box 6"),
              height: 200,
              margin: EdgeInsets.all(4),
            ),
          ],
        )*/ /*
        ,
      ),
    );
  }
}*/

/* Theme Global ###
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow,
        accentColor: Colors.red,
        iconTheme: IconThemeData(
          size: 200,
          color: Colors.red,
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 40,
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Tabs"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_transit),
                text: "Choose Transit",
              ),
              Tab(
                icon: Icon(Icons.directions_car),
                text: "Choose Car",
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: "Choose Bike",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.directions_transit,
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                  Text(
                    "Coding Help",
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              ),
            ),
            Center(
              child: Icon(
                Icons.directions_car,
              ),
            ),
            Center(
              child: Icon(
                Icons.directions_bike,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("Go"),
          onPressed: () {},
        ),
      ),
    );
  }
}
*/

// ################# SnackBar ############
/*class MyApp extends StatelessWidget {
  final myKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: myKey,
        appBar: AppBar(
          title: Text("SnackBar..."),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("show SnackBar"),
            onPressed: () {
              myKey.currentState.showSnackBar(SnackBar(
                content: Text("Hello snakBar from Global Key"),
              ));
            },
          )

          */ /*Builder(
            builder: (context) {
              return RaisedButton(
                child: Text("show SnackBar"),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Hello SnackBar from using builder"),
                  ));
                },
              );
            },
          )*/ /*
          ,
        ),
      ),
    );
  }
}*/

/*class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("show SnackBar"),
      onPressed: (){
         Scaffold.of(context).showSnackBar(SnackBar(
           content: Text("Hello SnackBar"),
         ));
      },
    );
  }
}*/

// ############## Navigation Drawer #############
/*class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        body: null,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/yss.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Yassine Belhcen",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      "tssremail@gmail.com",
                      style: TextStyle(color: Colors.white,fontSize: 12),
                    ),

                  ],
                ),
              ),


              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: ()=>print("Home Clicked"),
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: ()=>print("Settings Clicked"),
              ),
              ListTile(
                title: Text("Media"),
                leading: Icon(Icons.surround_sound),
                onTap: ()=>print("Media Clicked"),
              ),
              ListTile(
                title: Text("Add"),
                leading: Icon(Icons.add),
                onTap: ()=>print("Add Clicked"),
              ),
              ListTile(
                title: Text("Exit"),
                leading: Icon(Icons.exit_to_app),
                onTap: ()=>print("Exit Clicked"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

/* ######## appbar IconButton ##############"
class MyApp extends StatefulWidget {
  @override
  createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var choices = <Choice>[
    Choice(title: "Bicycle", icon: Icons.directions_bike),
    Choice(title: "Car", icon: Icons.directions_car),
    Choice(title: "Bus", icon: Icons.directions_bus),
    Choice(title: "Walk", icon: Icons.directions_walk),
    Choice(title: "Boat", icon: Icons.directions_boat),
    Choice(title: "Train", icon: Icons.directions_railway),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Popup Menu"),
          actions: [

            IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),PopupMenuButton(
              itemBuilder: (context) {
                return choices.skip(2).map((choice) {
                  return PopupMenuItem(
                    child: Text(choice.title),
                    value: choice,
                  );
                }).toList();
              },
              onSelected: (item){
                setState(() {
                  selectedIndex = choices.indexOf(item);
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Icon(
            choices[selectedIndex].icon,
            size: 50,
          ),
        ),
      ),
    );
  }
}*/

/* ############ PopupMenuButton ##########
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> courses = [
    "Dart",
    "Flutter",
    "Android",
    "IOS",
  ];
  String selectedCourse = "Dart";

  var list = List<PopupMenuEntry<dynamic>>();
  @override
  void initState() {

    list.add(PopupMenuItem(
      child: Text("Dart"),
      value: "Dart",
    ));

    list.add(PopupMenuItem(
      child: Text("Android"),
      value: "Android",
    ));
    list.add(PopupMenuDivider(height: 10));

    list.add(PopupMenuItem(
      child: Text("iOS"),
      value: "iOS",
    ));

    list.add(PopupMenuItem(
      child: Text("Flutter"),
      value: "Flutter",
    ));

    list.add(PopupMenuItem(
      child: Text("Js"),
      value: "Js",
    ));


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ButtonBar and dropdown Button"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return list.toList();
              },
              onCanceled:()=> print("Noting Selected From the menu Item!"),
              onSelected: (item){
                setState(() {
                  selectedCourse = item;
                });
              },
              icon: Icon(Icons.settings),
              padding: EdgeInsets.only(right: 20),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("You Selected : $selectedCourse",
                style: TextStyle(color: Colors.red),),
              SizedBox(height: 50),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("raise button"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("FlatButton"),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              DropdownButton(
                items: courses.map((course) {
                  return DropdownMenuItem(value: course, child: Text(course));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCourse = value;
                  });
                },
                value: selectedCourse,
                icon: Icon(Icons.arrow_drop_down_circle),
                dropdownColor: Colors.blueGrey,

              )
            ],
          ),
        ),
      ),
    );
  }
}*/

// ############## FloatingActionButton ##########
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("FloatingActionButton"),
          ),
          body: Center(
            child: Text("Welcome to Coding help"),
          ),
          */ /*
        1 - FloatingActionButton
        2 - FloatingActionButton.extended
         */ /*
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => print("ActionButton Clicked!"),
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.yellow,
           // mini: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            elevation: 8,

          ),
          */ /*floatingActionButton: FloatingActionButton.extended(
            onPressed: () => print("Floating Clicked"),
            label: Text("Save"),
            icon: Icon(Icons.save),
            backgroundColor: Colors.red,
            foregroundColor: Colors.yellow,
          ),*/ /*
          ),
    );
  }
}*/

/* ### Buttons #####
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SizeBox"),
        ),
        body: Column(
          children: [
            RaisedButton(
              child: Text("Raise Button"),
              onPressed: () => print("Raise button Clicked"),
              color: Colors.cyanAccent,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton.icon(
              label: Text("Volume up"),
              icon: Icon(
                Icons.volume_up,
                color: Colors.cyanAccent,
              ),
              textColor: Colors.white,
              color: Colors.black,
              onPressed: () => print("Raised with icon Presseded!"),
              splashColor: Colors.grey,
            ),
            SizedBox(height: 20,),
            IconButton(
              icon: Icon(Icons.volume_down,size: 50,),
              onPressed: ()=>print("Icon was Clicked"),
              color: Colors.red,
              splashColor: Colors.cyanAccent,
            )
          ],
        ),
      ),
    );
  }
}
*/

// ################# Sliver & SliverList #########
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Sliver"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                title: Text("First List Item!"),
              ),
              ListTile(
                title: Text("Second List Item!"),
              ),
              ListTile(
                title: Text("Therted List Item!"),
              ),
              ListTile(
                title: Text("Fourt List Item!"),
              ),
              ListTile(
                title: Text("Fift List Item!"),
              ),ListTile(
                title: Text("Fift List Item!"),
              ),ListTile(
                title: Text("Fift List Item!"),
              ),ListTile(
                title: Text("Fift List Item!"),
              ),ListTile(
                title: Text("Fift List Item!"),
              ),ListTile(
                title: Text("Fift List Item!"),
              ),ListTile(
                title: Text("Fift List Item!"),
              ),ListTile(
                title: Text("Fift List Item!"),
              ), ListTile(
                title: Text("Fift List Item!"),
              ),
            ]),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 200,
                  ),
                  Text(
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text "
                    "This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text This Same Longet Text ",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}*/

//########## Container BorderBox , BoxDecoration ###
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Container Widget")),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.teal,
              // border: Border.all(color: Colors.black, width: 4),
              // borderRadius: BorderRadius.all(Radius.circular(20))
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(blurRadius: 10)]

            ),
          ),
        ),
      ),
    );
  }
}*/

// ###### ConstrainedBox / expand
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Constrained Widget"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(height: 300,width: 300),
          child: Card(
            child: Text("expand"),
            color: Colors.deepOrangeAccent,
            elevation: 5,
            shadowColor: Colors.teal,
          ),
        ),
      ),
    );
  }
}*/

/* ##################  StatelessWidget / LayoutBuilder #####
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("IntrinsicWidth/height")),
        body: LayoutBuilder(

          builder: (context, constraints) =>
              Stack(
                  fit: StackFit.expand,
                  children: [
                    Material(color: Colors.black,),
                    Positioned(
                      top: 0,
                      child: Icon(
                        Icons.add_a_photo, color: Colors.white, size: 40,),
                    ),

                    Positioned(
                      top: constraints.maxHeight - 40,
                      right: constraints.maxWidth - 40,
                      child: Icon(
                        Icons.add_box, size: 40, color: Colors.white,),

                    ),





                  ]
              ),


        ),
      ),
    );
  }
}
*/

//############  Positioned #################
/*Positioned(
              top: 0,
              left: 0,
              child: Icon(
                Icons.access_alarm,
                color: Colors.amberAccent,
                size: 40,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Icon(
                Icons.account_balance,
                color: Colors.amberAccent,
                size: 40,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Icon(
                Icons.add_a_photo,
                color: Colors.amberAccent,
                size: 40,
              ),
            )*/

//############# IntrinsicWidth ########
/*Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RaisedButton(
                  child: Text("Short"),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('A bit Longer'),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text("The Longest Button"),
                  onPressed: () {},
                )
              ],
            ),
          ),
        )*/

/* ############# Load Image & Placeholder ###########
*
*
*
* class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter colors, fonts"),
          backgroundColor: Colors.amber[900],
        ),
        body: Center(
          child: CachedNetworkImage(
            imageUrl:
                "https://cardiffcitystadium.co.uk/wp-content/uploads/2018/07/imgg.jpg",
            placeholder: (context, url) => CircularProgressIndicator(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          //anonymouse function (dart)
          onPressed: () => print('you Clicked me'),
          child: Icon(Icons.add),
          backgroundColor: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}*/

//################## Column & Row (MainAxisAlignment/CrossAxisAlignment) #######
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column & Row"),
        ),
        body: Row(
          */ /*  mainAxisAlignment: MainAxisAlignment.spaceAround,*/ /*
          */ /* crossAxisAlignment: CrossAxisAlignment.stretch,*/ /*
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.star, size: 60, color: Colors.amber),
            Icon(Icons.star, size: 200, color: Colors.amber),
            Icon(Icons.star, size: 60, color: Colors.amber),
          ],
        )
        */ /* Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              "Hello",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "Flutter developers",
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        )*/ /*
        ,
      ),
    );
  }
}*/
