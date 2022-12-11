import 'package:flutter/material.dart';
import 'constants.dart';
import 'flight_info.dart';
import 'ticket_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kColorPrimary,
      ),
      home: _FlightBookingPage(),
    );
  }
}

class _FlightBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.navigate_before),
        backgroundColor: kColorPrimary,
      ),
      body: Column(
        children: const [
          FlightInfo(),
          TicketList(),
        ],
      ),
    );
  }
}