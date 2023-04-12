import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'eventdetail.dart';
import 'regisform.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedDate = "29 April"; //default selected date
  bool _isPressed = false;
  bool _isPressed1 = true;
  bool _isPressed2 = true;

  late VideoPlayerController _videoPlayerController;


  List<Event> events4May = [
    Event(
      title: "Hackathon",
      posterUrl: "assets/posters/hcka.png",
      time: "11:00 AM - 1:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Board Meeting",
      posterUrl: "assets/posters/codewar.png",
      time: "12:00 PM - 2:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Code War",
      posterUrl: "assets/posters/techq.png",
      time: "1:00 PM - 3:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Masala Allocation",
      posterUrl: "assets/favicon.png",
      time: "03:00 PM - 06:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "DJ Night",
      posterUrl: "assets/posters/hcka.png",
      time: "07:00 PM - 10:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Anime Quiz",
      posterUrl: "assets/posters/hcka.png",
      time: "11:00 AM - 01:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Fibre Structure",
      posterUrl: "https://picsum.photos/205",
      time: "12:00 PM - 04:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "MUN",
      posterUrl: "assets/posters/hcka.png",
      time: "02:00 PM - 03:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Digital Illustration",
      posterUrl: "assets/posters/hcka.png",
      time: "02:00 PM - 04:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Auto CAD",
      posterUrl: "assets/posters/hcka.png",
      time: "03:00 PM - 05:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "PPT Competition",
      posterUrl: "https://picsum.photos/205",
      time: "04:00 PM - 06:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Photography Competition",
      posterUrl: "https://picsum.photos/205",
      time: "06:00 PM - 07:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
  ];

  List<Event> events05May = [
    Event(
      title: "Treasure Hunt",
      posterUrl: "assets/posters/hcka.png",
      time: "09:00 AM - 11:00 AM",
      venue: "TIT&S Bhiwani",
      description:
      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
    ),
    Event(
      title: "Structural Engineering",
      posterUrl: "assets/posters/hcka.png",
      time: "10:00 AM - 12:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.",
    ),
    Event(
      title: "Press Release",
      posterUrl: "assets/posters/hcka.png",
      time: "11:00 AM - 01:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Anime Quiz",
      posterUrl: "assets/posters/hcka.png",
      time: "11:00 AM - 01:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Tech Quiz",
      posterUrl: "assets/posters/hcka.png",
      time: "11:00 AM - 01:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.",
    ),
    Event(
      title: "Code War",
      posterUrl: "assets/posters/hcka.png",
      time: "1:00 PM - 3:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Robo War",
      posterUrl: "assets/posters/hcka.png",
      time: "04:00 PM - 05:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Fashion Show",
      posterUrl: "assets/posters/hcka.png",
      time: "05:00 PM - 08:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Cultural Night",
      posterUrl: "assets/posters/hcka.png",
      time: "05:00 PM - 08:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "MUN",
      posterUrl: "assets/posters/hcka.png",
      time: "09:00 AM - 11:00 AM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Hackathon",
      posterUrl: "assets/posters/hcka.png",
      time: "10:00 AM - 12:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Debate",
      posterUrl: "assets/posters/hcka.png",
      time: "10:00 AM - 03:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Digital Handicraft",
      posterUrl: "assets/posters/hcka.png",
      time: "12:00 PM - 02:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Fiber Structure",
      posterUrl: "assets/posters/hcka.png",
      time: "12:00 PM - 04:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Pun War",
      posterUrl: "assets/posters/hcka.png",
      time: "01:00 PM - 02:00 PM",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
  ];

  //both
  List<Event> eventsBothDays = [
    Event(
      title: "Online Gaming",
      posterUrl: "assets/posters/hcka.png",
      time: "Full Day",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Offline Gaming",
      posterUrl: "assets/posters/codewar.png",
      time: "Full Day",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Human Ludo",
      posterUrl: "assets/posters/techq.png",
      time: "Full Day",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
    Event(
      title: "Open Mic",
      posterUrl: "assets/favicon.png",
      time: "Full Day",
      venue: "TIT&S Bhiwani",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    Event(
      title: "Exhibition(Electrical)",
      posterUrl: "assets/posters/hcka.png",
      time: "Full Day",
      venue: "TIT&S Bhiwani",
      description:
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    ),
    Event(
      title: "Exhibition(Textile)",
      posterUrl: "assets/posters/hcka.png",
      time: "Full Day",
      venue: "TIT&S Bhiwani",
      description:
      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    ),
  ];


  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/iii.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
        _videoPlayerController.setLooping(true);
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }
  Map<int, bool> addedToCartMap = {};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College Fest',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Wrap the body with a Builder widget to access a context that has a MediaQuery widget ancestor
        body: Builder(
          builder: (BuildContext context) {
            final Size screenSize = MediaQuery.of(context).size;
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
                child: FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.05,
                          vertical: screenSize.height * 0.05,
                        ),
                        child: Stack(
                          children: [
                            SizedBox.expand(
                              child: FittedBox(

                                fit: BoxFit.fitWidth,
                                child: SizedBox(
                                  width: _videoPlayerController.value.size.width ?? 0,
                                  height: _videoPlayerController.value.size.height ?? 0,
                                  child: VideoPlayer(_videoPlayerController),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(height: 10.0),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: selectedDate == "04 May"
                                        ? events4May.length
                                        : selectedDate == "05 May"
                                        ? events05May.length
                                        : eventsBothDays.length,
                                    itemBuilder: (context, index) {
                                      Event event = selectedDate == "04 May"
                                          ? events4May[index]
                                          : selectedDate == "05 May"
                                          ? events05May[index]
                                          : eventsBothDays[index];
                                      bool isAddedToCart =
                                          addedToCartMap.containsKey(index) &&
                                              addedToCartMap[index] == true;

                                      return Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0.0, vertical: 5.0),
                                          child: Card(
                                            elevation: 5.0,
                                            color: Colors.black12,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(18.0),
                                              side: const BorderSide(
                                                color: Colors.purple,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: ExpansionTile(
                                              tilePadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 8.0,
                                                  vertical: 0.0),
                                              title: ListTile(
                                                title: Text(
                                                  event.title,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                subtitle: Text(
                                                  event.time,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                leading: CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      event.posterUrl),
                                                ),
                                              ),
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Image.asset(
                                                        event.posterUrl,
                                                        width: double.infinity,
                                                        height: 350.0,
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                      const SizedBox(
                                                          height: 20.0),
                                                      Text(
                                                        event.title,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleLarge
                                                            ?.copyWith(
                                                          color:
                                                          Colors.white,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 10.0),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.schedule,
                                                              size: 16.0,
                                                              color: Colors
                                                                  .purple),
                                                          const SizedBox(
                                                              width: 4.0),
                                                          Text(
                                                            event.time,
                                                            style: Theme.of(
                                                                context)
                                                                .textTheme
                                                                .titleMedium
                                                                ?.copyWith(
                                                              color: Colors
                                                                  .white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 4.0),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.place,
                                                              size: 16.0,
                                                              color: Colors
                                                                  .purple),
                                                          const SizedBox(
                                                              width: 4.0),
                                                          Text(
                                                            event.venue,
                                                            style: Theme.of(
                                                                context)
                                                                .textTheme
                                                                .titleMedium
                                                                ?.copyWith(
                                                              color: Colors
                                                                  .white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 20.0),
                                                      Text(
                                                        event.description,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      const Padding(
                                                          padding:
                                                          EdgeInsets.all(
                                                              5.0)),
                                                      Container(
                                                        decoration:
                                                        BoxDecoration(
                                                          gradient:
                                                          LinearGradient(
                                                            begin: Alignment
                                                                .topCenter,
                                                            end: Alignment
                                                                .bottomCenter,
                                                            colors: [
                                                              isAddedToCart
                                                                  ? Colors.purple[
                                                              400] ??
                                                                  Colors
                                                                      .purple
                                                                  : Colors.blue[
                                                              400] ??
                                                                  Colors
                                                                      .blue,
                                                              isAddedToCart
                                                                  ? Colors.purple[
                                                              700] ??
                                                                  Colors
                                                                      .purple
                                                                  : Colors.blue[
                                                              700] ??
                                                                  Colors
                                                                      .blue,
                                                            ],
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              15.0),
                                                        ),
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              if (isAddedToCart) {
                                                                addedToCartMap
                                                                    .remove(
                                                                    index);
                                                              } else {
                                                                addedToCartMap[
                                                                index] =
                                                                true;
                                                              }
                                                            });
                                                          },
                                                          child: Text(
                                                            isAddedToCart
                                                                ? 'Un-register'
                                                                : 'Add to Register',
                                                          ),
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors
                                                                .transparent, // This removes the default button background
                                                            elevation:
                                                            0, // This removes the default button shadow
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ));
                                    },
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(15.0)),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedDate = "04 May";
                                        _isPressed = !_isPressed;
                                        _isPressed1 = !_isPressed;
                                        _isPressed2 = !_isPressed;
                                      });
                                    },
                                    style: ButtonStyle(
                                      minimumSize:
                                      MaterialStateProperty.all<Size>(
                                          const Size(20.0, 10.0)),
                                      padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                          const EdgeInsets.symmetric(
                                              horizontal: 20.0,
                                              vertical: 12.0)),
                                      elevation:
                                      MaterialStateProperty.all<double>(
                                          5.0),
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
                                    child: const Text("04 May"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedDate = "05 May";
                                        _isPressed1 = !_isPressed1;
                                        _isPressed = !_isPressed1;
                                        _isPressed2 = !_isPressed1;
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
                                              horizontal: 20.0,
                                              vertical: 12.0)),
                                      elevation:
                                      MaterialStateProperty.all<double>(
                                          5.0),
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
                                    child: const Text("05 May"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedDate = "Both Days";
                                        _isPressed2 = !_isPressed2;
                                        _isPressed = !_isPressed2;
                                        _isPressed1 = !_isPressed2;
                                      });
                                    },
                                    style: ButtonStyle(
                                      minimumSize:
                                      MaterialStateProperty.all<Size>(
                                          const Size(20.0, 10.0)),
                                      padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                          const EdgeInsets.symmetric(
                                              horizontal: 20.0,
                                              vertical: 12.0)),
                                      elevation:
                                      MaterialStateProperty.all<double>(
                                          5.0),
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
                                        selectedDate == "Both Days"
                                            ? Colors.purpleAccent
                                            : Colors.blue,
                                      ),
                                    ),
                                    child: const Text("Both Days"),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed:() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationForm(addedToCartMap: addedToCartMap,
                ),
                ),
                );
                },
                              child: Text('Register'),
                            ),

                          ],
                        ))));
          },
        ),
      ),
    );
  }
}
