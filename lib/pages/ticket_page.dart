import 'package:booking/pages/booking.dart';
import 'package:booking/theme/theme_file.dart';
import 'package:booking/theme/theme_file.dart';
import 'package:booking/widgets/big_text_widget.dart';
import 'package:dotted_line/dotted_line.dart';
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
                    text: "Search Results",
                    color: ThemeFile.bookingDeepBlack,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 20,
                    color: ThemeFile.bookingDeepBlack,
                  )
                ],
              )),

          Container(
            color: ThemeFile.bookingBlueGrey,
            padding:
                const EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 20),
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
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: ListView.builder(
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
                        margin: const EdgeInsets.only(top: 10),
                        padding:
                            const EdgeInsets.only(top: 10, left: 3, right: 10),
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.pink.shade500,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Icon(
                                  Icons.money,
                                  color: Colors.white,
                                ),
                              ),
                              title: BigTextWidget(
                                text: "Royal Rift",
                                color: ThemeFile.bookingBlueGrey,
                                size: 18,
                              ),
                              subtitle: BigTextWidget(
                                text: "Executive(A)",
                                size: 16,
                                color: ThemeFile.bookingBlack1,
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BigTextWidget(
                                    text: "Ksh. 1000",
                                    size: 18,
                                    color: ThemeFile.bookingDeepBlack,
                                  ),
                                  BigTextWidget(
                                    text: "8 seats left",
                                    color: Colors.pink.shade600,
                                    size: 16,
                                  )
                                ],
                              ),
                            ),
                            const DottedLine(
                              dashColor: Colors.black12,
                            ),
                            // !second card section
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 30, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        BigTextWidget(
                                          text: "Nairobi",
                                          color: ThemeFile.bookingDeepBlack,
                                          size: 16,
                                        ),
                                        BigTextWidget(
                                          text: "13:00",
                                          size: 16,
                                          color: ThemeFile.bookingBlack1,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            BigTextWidget(
                                              text: "50m to go",
                                              color: ThemeFile.bookingBlack1,
                                              size: 13,
                                            ),
                                            BigTextWidget(
                                              text: "Fri 8 Apr",
                                              color: ThemeFile.bookingBlack1,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        BigTextWidget(
                                          text: "Bungoma",
                                          color: ThemeFile.bookingDeepBlack,
                                          size: 16,
                                        ),
                                        BigTextWidget(
                                            text: "20:00",
                                            size: 16,
                                            color: ThemeFile.bookingBlack1)
                                      ],
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
