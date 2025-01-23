import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';



const dGreen = Color(0xFF54D3C2);



class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // PeriodSection(),
              // CalendarRange(),
              // ValidateBookingSection()
            ],
          ),
        ));
  }
}



class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.5),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 20,
        ),
      ),

      title: Text(
        "Calendrier",
        style: GoogleFonts.nunito(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800),
      ),
      centerTitle: true,
    );
  }
}