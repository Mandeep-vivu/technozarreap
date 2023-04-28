import 'package:flutter/material.dart';
import 'package:technozarre/drawer.dart';
import 'eventdetail.dart';
import 'regisform.dart';

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
        minimumSize: MaterialStateProperty.all<Size>(const Size(18.0, 9.0)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 18.0, vertical: 11.0)),
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
    return Scaffold(
      drawerEdgeDragWidth: 80, // Set swipe area width to 80
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width *
            0.4, // Set Drawer width to 60% of screen width
        child: Drawert(),
      ),
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
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 50, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onHorizontalDragEnd: (details) {
                              if (details.primaryVelocity! > 0) {
                                Scaffold.of(context).openDrawer();
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                child: const Icon(Icons.menu),
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(4),
                                ),
                              ),
                            ),
                          ),
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          screenSize.width * 0.05,
                          screenSize.height * 0.10,
                          screenSize.width * 0.05,
                          screenSize.height * 0.05),
                      child: Column(
                        children: [
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
                                bool isAddedToCart =
                                    addedToCartMap.containsKey(event.title) &&
                                        addedToCartMap[event.title] == true;

                                return Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 5.0),
                                    child: Card(
                                      elevation: 10.0,
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
                                        tilePadding: const EdgeInsets.symmetric(
                                            horizontal: 2.0, vertical: 5.0),
                                        title: SizedBox(
                                          height:
                                              90.0, // set the height to your desired value
                                          child: ListTile(
                                            title: Text(
                                              event.title,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            subtitle: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                        Icons.location_on,
                                                        color: Colors.white),
                                                    const SizedBox(width: 5),
                                                    Expanded(
                                                      child: Text(
                                                        event.venue,
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 5),
                                                Row(children: [
                                                  const Icon(Icons.access_time,
                                                      color: Colors.white),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    event.time,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                ])
                                              ],
                                            ),
                                            leading: CircleAvatar(
                                              radius: 38,
                                              backgroundImage:
                                                  AssetImage(event.posterUrl),
                                            ),
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
                                                  fit: BoxFit.cover,
                                                ),
                                                const SizedBox(height: 20.0),
                                                Text(
                                                  event.description,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                const Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0)),
                                                Container(
                                                  alignment: Alignment.center,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: [
                                                        isAddedToCart
                                                            ? Colors.purple[
                                                                    400] ??
                                                                Colors.purple
                                                            : Colors.blue[
                                                                    400] ??
                                                                Colors.blue,
                                                        isAddedToCart
                                                            ? Colors.purple[
                                                                    700] ??
                                                                Colors.purple
                                                            : Colors.blue[
                                                                    700] ??
                                                                Colors.blue,
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (isAddedToCart) {
                                                          addedToCartMap.remove(
                                                              event
                                                                  .title); // Use event.title as the key
                                                        } else {
                                                          addedToCartMap[
                                                                  event.title] =
                                                              true; // Use event.title as the key
                                                        }
                                                      });
                                                    },
                                                    style: ButtonStyle(
                                                      minimumSize:
                                                          MaterialStateProperty
                                                              .all(const Size(
                                                                  330, 35)),
                                                      shape: MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(Colors
                                                                  .transparent),
                                                      elevation:
                                                          MaterialStateProperty
                                                              .all(0),
                                                    ),
                                                    child: Text(
                                                      isAddedToCart
                                                          ? 'remove from the List'
                                                          : 'Add to the List',
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
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -6,
                      left: 0,
                      right: 0,
                      child: ElevatedButton(
                        onPressed: () {
                          List<String> addedToCartTitles = addedToCartMap
                              .entries
                              .where((entry) => entry.value)
                              .map((entry) => entry.key)
                              .toList();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegistrationForm(
                                addedToCartTitles: addedToCartTitles,
                                addedToCartMap: const {},
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'To Register',
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
