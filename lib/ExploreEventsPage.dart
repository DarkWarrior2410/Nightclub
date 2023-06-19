import 'package:flutter/material.dart';

class ExploreEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Events'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          EventCard(
            imagePath: 'images/lucas.jpg',
            eventName: 'Piano Concert By Lucas',
            eventDate: 'June 25, 2023',
            eventTime: '9:00 PM',
          ),
          SizedBox(height: 16),
          EventCard(
            imagePath: 'images/el (2).jpg',
            eventName: 'Retro Night By Elena and Claudia',
            eventDate: 'July 2, 2023',
            eventTime: '10:00 PM',
          ),
          SizedBox(height: 16),
          EventCard(
            imagePath: 'images/sourya.jpg',
            eventName: 'Grand Concert By Sourya',
            eventDate: 'July 9, 2023',
            eventTime: '9:30 PM',
          ),
          // Add more EventCard widgets for other events
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String imagePath;
  final String eventName;
  final String eventDate;
  final String eventTime;

  const EventCard({
    required this.imagePath,
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Date: $eventDate',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  'Time: $eventTime',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic here to handle event selection
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Buy Tickets',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
