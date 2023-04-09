import 'package:flutter/material.dart';

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
