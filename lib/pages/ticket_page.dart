import 'package:booking/pages/booking.dart';
import 'package:booking/theme/theme_file.dart';
import 'package:booking/theme/theme_file.dart';
import 'package:booking/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectTicketPage extends ConsumerStatefulWidget {
  const SelectTicketPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectTicketPageState();
}

class _SelectTicketPageState extends ConsumerState<SelectTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // !upper navigation
          Container(
              padding: const EdgeInsets.only(
                  top: 50, left: 10, right: 10, bottom: 10),
              color: ThemeFile.bookingwhite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  BigTextWidget(
                    text: "Choose the Ticket",
                    color: ThemeFile.bookingBlueGrey,
                  ),
                ],
              )),

          Container(
            color: ThemeFile.bookingBlueGrey,
            padding:
                const EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigTextWidget(
                        text: "Departure Station",
                        color: ThemeFile.bookingwhite,
                        size: 14,
                      ),
                      BigTextWidget(text: "Nairobi")
                    ],
                  ),
                  // !the icons goes here
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ThemeFile.bookingYellow),
                    child: const Icon(
                      Icons.arrow_forward_outlined,
                      color: ThemeFile.bookingwhite,
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigTextWidget(
                        text: "Arrival Station",
                        color: ThemeFile.bookingwhite,
                        size: 14,
                      ),
                      BigTextWidget(text: "Kisumu")
                    ],
                  )
                ]),
          ),
          Container(
            height: 220,
            margin: const EdgeInsets.all(10),
            child: PageView.builder(
                itemCount: 6,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BookingPage()));
                    },
                    child: Container(
                      height: 220,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: ThemeFile.bookingBlack1,
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/02/24/12/03/nairobi-647336__340.jpg"),
                              fit: BoxFit.cover)),
                      child: Stack(children: [
                        Positioned(
                            left: 0,
                            right: 0,
                            top: 100,
                            bottom: 0,
                            child: Container(
                              color: ThemeFile.bookingwhite,
                              padding: const EdgeInsets.only(
                                  top: 10, right: 10, left: 15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BigTextWidget(
                                        text: "18:00",
                                        size: 18,
                                        color: ThemeFile.bookingYellow,
                                      ),
                                      BigTextWidget(
                                        text: "5hrs 30m",
                                        size: 15,
                                        color: ThemeFile.bookingBlack1,
                                      ),
                                      BigTextWidget(
                                        text: "23:30",
                                        size: 18,
                                        color: ThemeFile.bookingYellow,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BigTextWidget(
                                        text: "KCY 397M",
                                        color: ThemeFile.bookingBlueGrey,
                                      ),
                                      BigTextWidget(
                                        text: "Ksh.1000",
                                        color: ThemeFile.bookingBlueGrey,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ]),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
