import 'package:flutter/material.dart';
import 'package:technozarre/svgfbg.dart';


import 'eventdetail.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedDate = "29 April"; //default selected date
  bool _isPressed = false;
  bool _isPressed1 = true;
  List<Event> events29April = [
    Event(
      title: "Event 1",
      posterUrl: "assets/posters/hcka.png",
      time: "10:00 AM - 12:00 PM",
      venue: "Auditorium",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Event 2",
      posterUrl: "assets/posters/codewar.png",
      time: "1:00 PM - 3:00 PM",
      venue: "Gymnasium",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Event 3",
      posterUrl: "assets/posters/techq.png",
      time: "4:00 PM - 6:00 PM",
      venue: "Football Ground",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Event 1",
      posterUrl: "assets/favicon.png",
      time: "10:00 AM - 12:00 PM",
      venue: "Auditorium",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Event 2",
      posterUrl: "https://picsum.photos/201",
      time: "1:00 PM - 3:00 PM",
      venue: "Gymnasium",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Event 3",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "Football Ground",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Event 6",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "Cricket Ground",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
  ];

  List<Event> events30April = [
    Event(
      title: "Event 4",
      posterUrl: "https://picsum.photos/203",
      time: "11:00 AM - 1:00 PM",
      venue: "Basketball Court",
      description:
      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
    ),
    Event(
      title: "Event 5",
      posterUrl: "https://picsum.photos/204",
      time: "2:00 PM - 4:00 PM",
      venue: "Hockey Ground",
      description:
      "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.",
    ),
    Event(
      title: "Event 6",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "Cricket Ground",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Event 1",
      posterUrl: "https://picsum.photos/200",
      time: "10:00 AM - 12:00 PM",
      venue: "Auditorium",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Event 6",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "Cricket Ground",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Event 2",
      posterUrl: "https://picsum.photos/201",
      time: "1:00 PM - 3:00 PM",
      venue: "Gymnasium",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Event 3",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "Football Ground",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College Fest',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Wrap the body with a Builder widget to access a context that has a MediaQuery widget ancestor

        body: Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bgg1.gif',),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 70.0),
              child:
            Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedDate = "29 April";
                              _isPressed = !_isPressed;
                            });
                          },
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(const Size(20.0, 10.0)),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0)),
                            elevation: MaterialStateProperty.all<double>(5.0),
                            shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(_isPressed ? Colors.purpleAccent : Colors.blue,),
                          ),
                          child: const Text("29 April"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedDate = "30 April";
                              _isPressed1 = !_isPressed1;
                              
                            });
                          },
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            overlayColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(color: Colors.white),
                            ),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: MaterialStateProperty.all<Size>(const Size(20.0, 10.0)),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0)),
                            elevation: MaterialStateProperty.all<double>(5.0),
                            shadowColor: MaterialStateProperty.all<Color>(Colors.grey),

                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(_isPressed1 ? Colors.purpleAccent : Colors.blue,),
                          ),
                          child: const Text("30 April"),
                        ),
                      ],

                    ),

                    Expanded(

                      child: ListView.builder(
                        itemCount: selectedDate == "29 April"
                            ? events29April.length
                            : events30April.length,
                        itemBuilder: (context, index) {
                          Event event = selectedDate == "29 April"
                              ? events29April[index]
                              : events30April[index];

                          return Card(
                            elevation: 5.0,

                            color: Colors.black12,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: const BorderSide(
                                color: Colors.purple,
                                width: 2.0,
                              ),
                            ),
                            child: ExpansionTile(
                              tilePadding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                              title: ListTile(
                                title: Text(event.title,style: TextStyle(color: Colors.white),),
                                subtitle: Text(event.time,style: TextStyle(color: Colors.white),),
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(event.posterUrl),
                                ),
                              ),
                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        event.posterUrl,
                                        width: double.infinity,
                                        height: 350.0,
                                        fit: BoxFit.fitWidth,
                                      ),
                                      const SizedBox(height: 20.0),
                                      Text(
                                        event.title,
                                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Row(
                                        children: [
                                          Icon(Icons.schedule, size: 16.0, color: Colors.purple),
                                          const SizedBox(width: 4.0),
                                          Text(
                                            event.title,
                                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4.0),
                                      Row(
                                        children: [
                                          Icon(Icons.place, size: 16.0, color: Colors.purple),
                                          const SizedBox(width: 4.0),
                                          Text(
                                            event.title,
                                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20.0),
                                      Text(event.description,style: TextStyle(color: Colors.white,),),
                                      const Padding(padding: EdgeInsets.all(5.0)),

                                    ],

                                  ),

                                ),
                              ],

                            ),

                          );


                        },
                      ),

                    ),
                    Padding(padding: EdgeInsets.all(30.0)),
                  ],
                ),
              ],
            )));
          },
        ),
      ),
    );
  }
}
