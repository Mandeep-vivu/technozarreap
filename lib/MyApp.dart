import 'package:flutter/material.dart';
import 'eventdetail.dart';
import 'regisform.dart';
import 'video_player_widget.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedDate = "04 May"; //default selected date
  bool _isPressed = false;
  bool _isPressed1 = true;
  bool _isPressed2 = true;

  ElevatedButton _buildButton(
      String text, bool isPressed, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
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
        backgroundColor: MaterialStateProperty.all<Color>(
          isPressed ? Colors.purpleAccent : Colors.blue,
        ),
      ),
      child: Text(text),
    );
  }
  Map<String, bool> addedToCartMap = {};
  EventData eventData = EventData();
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
                          vertical: screenSize.height * 0.06,
                        ),
                        child: Stack(
                          children: [
                            VideoPlayerWidget(),
                            Column(
                              children: [
                                SizedBox(height: 10.0),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: selectedDate == "04 May"
                                        ? eventData.events4May.length
                                        : selectedDate == "05 May"
                                        ? eventData.events05May.length
                                        : eventData.eventsBothDays.length,
                                    itemBuilder: (context, index) {
                                      Event event = selectedDate == "04 May"
                                          ? eventData.events4May[index]
                                          : selectedDate == "05 May"
                                          ? eventData.events05May[index]
                                          : eventData.eventsBothDays[index];
                                      bool isAddedToCart = addedToCartMap.containsKey(event.title) && addedToCartMap[event.title] == true;

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
                                                  horizontal: 0.0,
                                                  vertical: 0.0),
                                              title: Container(
                                                height:
                                                90.0, // set the height to your desired value
                                                child: ListTile(
                                                  title: Text(
                                                    event.title,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 17),
                                                  ),
                                                  subtitle: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons.location_on,
                                                              color:
                                                              Colors.white),
                                                          SizedBox(width: 5),
                                                          Expanded(
                                                            child: Text(
                                                              event.venue,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 14),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 5),
                                                      Row(children: [
                                                        Icon(Icons.access_time,
                                                            color:
                                                            Colors.white),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          event.time,
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 14),
                                                        ),
                                                      ])
                                                    ],
                                                  ),
                                                  leading: CircleAvatar(
                                                    radius: 38,
                                                    backgroundImage: AssetImage(
                                                        event.posterUrl),
                                                  ),
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
                                                        event.description,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      const Padding(
                                                          padding:
                                                          EdgeInsets.all(
                                                              10.0)),
                                                      Container(
                                                        alignment:
                                                        Alignment.center,

                                                        height: 35,
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
                                                                addedToCartMap.remove(event.title); // Use event.title as the key
                                                              } else {
                                                                addedToCartMap[event.title] = true; // Use event.title as the key
                                                              }
                                                            });
                                                          },
                                                          child: Text(
                                                            isAddedToCart
                                                                ? 'remove from the List'
                                                                : 'Add to the List',
                                                          ),
                                                          style: ButtonStyle(
                                                            minimumSize: MaterialStateProperty.all(Size(330, 35)),
                                                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                                            backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                                            elevation: MaterialStateProperty.all(0),
                                                          ),
                                                        ),

                                                        ),

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
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildButton("04 May", _isPressed, () {
                                    setState(() {
                                      selectedDate = "04 May";
                                      _isPressed = true;
                                      _isPressed1 = false;
                                      _isPressed2 = false;
                                    });
                                  }),
                                  _buildButton("05 May", _isPressed1, () {
                                    setState(() {
                                      selectedDate = "05 May";
                                      _isPressed = false;
                                      _isPressed1 = true;
                                      _isPressed2 = false;
                                    });
                                  }),
                                  _buildButton("Both Days", _isPressed2, () {
                                    setState(() {
                                      selectedDate = "Both Days";
                                      _isPressed = false;
                                      _isPressed1 = false;
                                      _isPressed2 = true;
                                    });
                                  }),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: -7,
                              left: 0,
                              right: 0,
                              child: ElevatedButton(
                                onPressed: () {
                                  List<String> addedToCartTitles = addedToCartMap.entries.where((entry) => entry.value).map((entry) => entry.key).toList();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegistrationForm(
                                        addedToCartTitles: addedToCartTitles, addedToCartMap: {},
                                      ),
                                    ),
                                  );
                                },

                                child: Text('To Register'),
                              ),
                            ),
                          ],
                        ))));
          },
        ),
      ),
    );
  }
}
