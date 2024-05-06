import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class Rekap extends StatefulWidget {
  const Rekap({super.key});

  @override
  State<Rekap> createState() => _RekapState();
}

class _RekapState extends State<Rekap> with SingleTickerProviderStateMixin {
  late DateTime today;
  late TabController _tabController;
  late Map<DateTime, String> dataPerTanggal;

  @override
  void initState() {
    super.initState();
    today = DateTime.now();
    _tabController = TabController(length: 3, vsync: this);
    dataPerTanggal = {
      DateTime.now(): 'Data untuk tanggal saat ini',
    };
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final mediaqueryheight = MediaQuery.of(context).size.height;
    final myappbar = AppBar(
      backgroundColor: Colors.blue.shade300,
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Column(
            children: [contentCalendar()],
          )),
    );
    // final bodyheight = mediaqueryheight -
    //     myappbar.preferredSize.height -
    //     MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: myappbar,
      body: Column(
        children: [
          Calendarrekap(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 249, 249, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 20, bottom: 10),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nama Siswa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "Mr. Bean Banget",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(128, 0, 63, 80)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hari, Tanggal, Tahun",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "Rabu, 17 April 2024",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(128, 0, 63, 80)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Jam Masuk",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "07 : 09 : 36",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(225, 247, 96, 96)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Keterangan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "Siswa hadir terlambat",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(225, 247, 96, 96)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 20, bottom: 10),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nama Siswa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "Mr. Bean Banget",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(128, 0, 63, 80)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hari, Tanggal, Tahun",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "Rabu, 17 April 2024",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(128, 0, 63, 80)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Jam Pulang",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "12 : 15 : 00",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(225, 0, 136, 0)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 20, bottom: 10),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nama Siswa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "Mr. Bean Banget",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(128, 0, 63, 80)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hari, Tanggal, Tahun",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "Rabu, 17 April 2024",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(128, 0, 63, 80)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Jam Masuk",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "07 : 09 : 36",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(225, 247, 96, 96)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Jam Pulang",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "12 : 15 : 00",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(225, 0, 136, 0)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Keterangan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromARGB(225, 0, 63, 80)),
                                ),
                                Text(
                                  "Siswa hadir terlambat",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(225, 247, 96, 96)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Calendarrekap() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
      child: Container(
        child: TableCalendar(
          locale: "en_US",
          rowHeight: 40,
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            leftChevronIcon: Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.white,
              size: 16,
            ),
            rightChevronIcon: Icon(
              FontAwesomeIcons.chevronRight,
              color: Colors.white,
              size: 16,
            ),
          ),
          availableGestures: AvailableGestures.all,
          focusedDay: today,
          firstDay: DateTime.utc(2000, 1, 1),
          lastDay: DateTime.utc(
            2030,
            12,
            31,
          ),
          calendarStyle: CalendarStyle(
            outsideTextStyle:
                TextStyle(color: Color.fromARGB(255, 233, 233, 233)),
            weekendTextStyle: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            defaultTextStyle: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            todayTextStyle: TextStyle(
              color: Color.fromARGB(225, 0, 63, 80),
            ),
            selectedTextStyle: TextStyle(color: Color.fromARGB(225, 0, 63, 80)),
            isTodayHighlighted: true,
            todayDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            selectedDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
          selectedDayPredicate: ((day) => isSameDay(day, today)),
          onDaySelected: _onDaySelected,
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(color: Colors.white),
            weekendStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget contentCalendar() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        color: Colors.blue.shade300,
        child: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                FontAwesomeIcons.rightToBracket,
              ),
              text: 'Masuk',
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.rightFromBracket),
              text: 'Pulang',
            ),
            Tab(
              icon: Icon(BootstrapIcons.grid_fill),
              text: 'Semua',
            )
          ],
          unselectedLabelColor: Color.fromARGB(128, 0, 63, 80),
          labelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: Color.fromARGB(255, 0, 63, 80),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
