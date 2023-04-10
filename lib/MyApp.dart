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
      title: "Board Meeting",
      posterUrl: "assets/posters/hcka.png",
      time: "12:00 PM - 2:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "MUN",
      posterUrl: "assets/posters/codewar.png",
      time: "2:00 PM - 3:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Fibre Structure",
      posterUrl: "assets/posters/techq.png",
      time: "12:00 PM - 4:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "PPT Competition",
      posterUrl: "assets/favicon.png",
      time: "04:00 pM - 06:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Hackathon",
      posterUrl: "https://picsum.photos/201",
      time: "11:00 PM - 3:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Auto CAD",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Code War",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Masala Startup",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Animie Quiz",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Photography Competition",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "DJ Show",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Digital Illustration",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
  ];

  List<Event> events30April = [
    Event(
      title: "MUN",
      posterUrl: "https://picsum.photos/203",
      time: "11:00 AM - 1:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
    ),
    Event(
      title: "Fiber Structure",
      posterUrl: "https://picsum.photos/204",
      time: "2:00 PM - 4:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.",
    ),
    Event(
      title: "Debate",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Press Release",
      posterUrl: "https://picsum.photos/200",
      time: "10:00 AM - 12:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Hackathon",
      posterUrl: "https://picsum.photos/205",
      time: "5:00 PM - 7:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Robo War",
      posterUrl: "https://picsum.photos/201",
      time: "1:00 PM - 3:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Tech Quiz",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Code War",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Animie Quiz",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "QR ka War",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Bridge Making",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Fashion Show",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Cultural Night",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Pun War",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Digital Handicraft",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
  ];

  //both
  List<Event> eventsBothDays = [
    Event(
      title: "Board Meeting",
      posterUrl: "assets/posters/hcka.png",
      time: "12:00 PM - 2:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "MUN",
      posterUrl: "assets/posters/codewar.png",
      time: "2:00 PM - 3:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Fibre Structure",
      posterUrl: "assets/posters/techq.png",
      time: "12:00 PM - 4:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "PPT Competition",
      posterUrl: "assets/favicon.png",
      time: "04:00 pM - 06:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Hackathon",
      posterUrl: "https://picsum.photos/201",
      time: "11:00 PM - 3:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Auto CAD",
      posterUrl: "https://picsum.photos/202",
      time: "4:00 PM - 6:00 PM",
      venue: "TIT&S Bhiwani",
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
                    image: AssetImage(
                      'assets/bgg12.gif',
                    ),
                    fit: BoxFit.cover,
                    opacity: 1,
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 70.0),
                    child: Stack(
                      children: [

                        Column(

                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(height: 50.0),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedDate = "29 April";
                                      _isPressed = !_isPressed;
                                      _isPressed1 = !_isPressed;
                                    });
                                  },
                                  style: ButtonStyle(
                                    minimumSize:
                                    MaterialStateProperty.all<Size>(
                                        const Size(20.0, 10.0)),
                                    padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry>(
                                        const EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 12.0)),
                                    elevation:
                                    MaterialStateProperty.all<double>(5.0),
                                    shadowColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(18.0),
                                      ),
                                    ),
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                      _isPressed
                                          ? Colors.purpleAccent
                                          : Colors.blue,
                                    ),
                                  ),
                                  child: const Text("29 April"),

                                ),

                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedDate = "30 April";
                                      _isPressed1 = !_isPressed1;
                                      _isPressed = !_isPressed1;
                                    });
                                  },
                                  style: ButtonStyle(
                                    foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                    overlayColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.lightBlueAccent),
                                    textStyle:
                                    MaterialStateProperty.all<TextStyle>(
                                      const TextStyle(color: Colors.white),
                                    ),
                                    tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                    minimumSize:
                                    MaterialStateProperty.all<Size>(
                                        const Size(20.0, 10.0)),
                                    padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry>(
                                        const EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 12.0)),
                                    elevation:
                                    MaterialStateProperty.all<double>(5.0),
                                    shadowColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(18.0),
                                      ),
                                    ),
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                      _isPressed1
                                          ? Colors.purpleAccent
                                          : Colors.blue,
                                    ),
                                  ),
                                  child: const Text("30 April"),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Expanded(
                              child: ListView.builder(
                                itemCount: selectedDate == "29 April"
                                    ? events29April.length
                                    : events30April.length,
                                itemBuilder: (context, index) {
                                  Event event = selectedDate == "29 April"
                                      ? events29April[index]
                                      : events30April[index];

                                  return Container(
                                    padding: const EdgeInsets.symmetric(
                                          horizontal: 0.0, vertical: 5.0),
                                  child:
                                    Card(
                                    elevation: 5.0,
                                    color: Colors.black12,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                        color: Colors.purple,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: ExpansionTile(
                                      tilePadding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 0.0),
                                      title: ListTile(
                                        title: Text(
                                          event.title,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        subtitle: Text(
                                          event.time,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        leading: CircleAvatar(
                                          backgroundImage:
                                          AssetImage(event.posterUrl),
                                        ),
                                      ),
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge
                                                    ?.copyWith(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(height: 10.0),
                                              Row(
                                                children: [
                                                  Icon(Icons.schedule,
                                                      size: 16.0,
                                                      color: Colors.purple),
                                                  const SizedBox(width: 4.0),
                                                  Text(
                                                    event.title,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium
                                                        ?.copyWith(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 4.0),
                                              Row(
                                                children: [
                                                  Icon(Icons.place,
                                                      size: 16.0,
                                                      color: Colors.purple),
                                                  const SizedBox(width: 4.0),
                                                  Text(
                                                    event.title,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium
                                                        ?.copyWith(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 20.0),
                                              Text(
                                                event.description,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const Padding(
                                                  padding: EdgeInsets.all(5.0)),
                                            ],

                                          ),

                                        ),

                                      ],

                                    ),
                                    )
                                  );

                                },

                              ),

                            ),


                            Padding(padding: EdgeInsets.all(15.0)),
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
