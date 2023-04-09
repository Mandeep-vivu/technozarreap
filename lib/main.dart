import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedDate = "29 April"; //default selected date

  List<Event> events29April = [
    Event(
      title: "Event 1",
      posterUrl: "https://picsum.photos/200",
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
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College Fest',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('College Fest'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedDate = "29 April";
                    });
                  },
                  child: const Text("29 April"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedDate = "30 April";
                    });
                  },
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventDetailsPage(event),
                          ),
                        );
                      },
                      child: ListTile(
                        title: Text(event.title),
                        subtitle: Text(event.time),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(event.posterUrl),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventDetailsPage extends StatelessWidget {
  final Event event;

  const EventDetailsPage(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(event.posterUrl),
            const SizedBox(height: 40.0),
            Text(event.title, style: Theme.of(context).textTheme.titleLarge),
            Text(event.time, style: Theme.of(context).textTheme.titleMedium),
            Text(event.venue, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 40.0),
            Text(event.description),
          ],
        ),
      ),
    );
  }
}
class Event {
  final String title;
  final String posterUrl;
  final String time;
  final String venue;
  final String description;

  Event({
    required this.title,
    required this.posterUrl,
    required this.time,
    required this.venue,
    required this.description,
  });
}
