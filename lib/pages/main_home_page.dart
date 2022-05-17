import 'package:booking/pages/ticket_page.dart';
import 'package:booking/theme/theme_file.dart';
import 'package:booking/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:date_time_picker/date_time_picker.dart';

class MainHomePage extends ConsumerStatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainHomePageState();
}

class _MainHomePageState extends ConsumerState<MainHomePage> {
  final List<String> departplaces = <String>[
    'Nakuru',
    "Nairobi",
    "Mombasa",
    "Kisumu",
    "Bungoma"
  ];
  String departurePlace = "Nakuru";
  void onChangedDepart(selectedPlace) {
    setState(() {
      departurePlace = selectedPlace;
    });
  }

  final List<String> destplaces = <String>[
    'Nakuru',
    "Nairobi",
    "Mombasa",
    "Kisumu",
    "Bungoma"
  ];
  String destinationPlace = "Nakuru";
  void onChangedDestination(selectedPlace) {
    setState(() {
      destinationPlace = selectedPlace;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // !top text widget
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 60),
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2021/06/06/09/04/bridge-6314795__340.jpg"),
                  fit: BoxFit.cover),
            ),
            child: BigTextWidget(
              text: "Where do you want to go",
              size: 34,
            ),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 270,
            child: Container(
              // height: 220,
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ThemeFile.bookingwhite,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  // !stations
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigTextWidget(
                            text: "Departure station",
                            size: 13,
                            color: ThemeFile.bookingBlack1,
                          ),
                          // !dropdown,
                          DropdownButton(
                              value: departurePlace,
                              items: departplaces.map((place) {
                                return DropdownMenuItem(
                                    value: place, child: Text(place));
                              }).toList(),
                              onChanged: onChangedDepart)
                        ],
                      ),
                      Column(
                        children: [
                          BigTextWidget(
                            text: "Arrival station",
                            size: 13,
                            color: ThemeFile.bookingBlack1,
                          ),
                          // !dropdown,
                          DropdownButton(
                              value: destinationPlace,
                              items: destplaces.map((place) {
                                return DropdownMenuItem(
                                    value: place, child: Text(place));
                              }).toList(),
                              onChanged: onChangedDestination)
                        ],
                      ),
                    ],
                  ),
                  // !departure date
                  DateTimePicker(
                    type: DateTimePickerType.dateTimeSeparate,
                    dateMask: 'd MMM, yyyy',
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    icon: const Icon(Icons.event),
                    dateLabelText: 'Day',
                    timeLabelText: "Time",
                    selectableDayPredicate: (date) {
                      // Disable weekend days to select from the calendar
                      if (date.weekday == 6 || date.weekday == 7) {
                        return false;
                      }

                      return true;
                    },
                    onChanged: (val) => print(val),
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectTicketPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 10),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: ThemeFile.bookingYellow,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.search,
                            color: ThemeFile.bookingwhite,
                          ),
                          BigTextWidget(
                            text: "Search",
                            size: 15,
                            color: ThemeFile.bookingwhite,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
        Positioned(
            top: 480,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigTextWidget(
                    text: "Available Vehicles",
                    color: ThemeFile.bookingDeepBlack,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 220,
                    child: PageView.builder(
                        itemCount: 6,
                        itemBuilder: (_, index) {
                          return Container(
                            height: 220,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2018/02/10/12/37/car-3143564__340.jpg"),
                                    fit: BoxFit.cover)),
                            child: Stack(children: [
                              Positioned(
                                  top: 130,
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 90,
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 10),
                                    decoration: const BoxDecoration(
                                        color: ThemeFile.bookingwhite,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BigTextWidget(
                                          text: "KCY 397M",
                                          size: 20,
                                          color: ThemeFile.bookingDeepBlack,
                                        ),
                                        BigTextWidget(
                                          text: "14 Seats",
                                          size: 16,
                                          color: ThemeFile.bookingDeepBlack,
                                        )
                                      ],
                                    ),
                                  ))
                            ]),
                          );
                        }),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
