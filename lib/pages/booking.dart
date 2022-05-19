import 'package:booking/pages/bookingForm.dart';
import 'package:booking/pages/ticket_page.dart';
import 'package:booking/theme/theme_file.dart';
import 'package:booking/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookingPage extends ConsumerStatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BookingPageState();
}

class _BookingPageState extends ConsumerState<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 0, top: 40, right: 0),
          decoration: BoxDecoration(color: Colors.blueGrey.shade50),
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SelectTicketPage()));
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: ThemeFile.bookingwhite),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: ThemeFile.bookingBlueGrey,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 15, bottom: 15),
                            decoration: BoxDecoration(
                                color: ThemeFile.bookingwhite,
                                borderRadius: BorderRadius.circular(5)),
                            child: BigTextWidget(
                              text: "Select Your seat",
                              color: ThemeFile.bookingDeepBlack,
                            ),
                          )
                        ],
                      ))),
              Positioned(
                  top: 80,
                  left: 90,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                    height: 330,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            seatRows("1", Colors.blueGrey.shade50,
                                ThemeFile.bookingBlueGrey),
                            seatRows("2", Colors.orange.shade100,
                                ThemeFile.bookingBlueGrey),
                            seatRows("3", Colors.blueGrey.shade50,
                                ThemeFile.bookingBlueGrey),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                seatRows("4", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey),
                                const SizedBox(
                                  width: 10,
                                ),
                                seatRows("5", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey)
                              ],
                            ),
                            Row(
                              children: [
                                seatRows("6", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey),
                                const SizedBox(
                                  width: 10,
                                ),
                                seatRows("7", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey)
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                seatRows("8", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey),
                                const SizedBox(
                                  width: 10,
                                ),
                                seatRows("9", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey)
                              ],
                            ),
                            Row(
                              children: [
                                seatRows("10", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey),
                                const SizedBox(
                                  width: 10,
                                ),
                                seatRows("11", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey)
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                seatRows("12", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey),
                                const SizedBox(
                                  width: 10,
                                ),
                                seatRows("13", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey)
                              ],
                            ),
                            Row(
                              children: [
                                seatRows("14", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey),
                                const SizedBox(
                                  width: 10,
                                ),
                                seatRows("15", Colors.blueGrey.shade50,
                                    ThemeFile.bookingBlueGrey)
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange.shade100,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  BigTextWidget(
                                    text: "Available",
                                    size: 12,
                                    color: ThemeFile.bookingBlueGrey,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange.shade100,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  BigTextWidget(
                                    text: "Booked",
                                    size: 12,
                                    color: ThemeFile.bookingBlueGrey,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange.shade100,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  BigTextWidget(
                                    text: "Sold out",
                                    size: 12,
                                    color: ThemeFile.bookingBlueGrey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              // !search button
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BookingForm()));
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      decoration: BoxDecoration(
                          color: ThemeFile.bookingYellow,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigTextWidget(
                            text: "Book now",
                            size: 14,
                            color: ThemeFile.bookingwhite,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: ThemeFile.bookingwhite,
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          )),
    );
  }

  Container seatRows(String text, Color bgColor, Color textColor) {
    return Container(
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: bgColor),
      child: Center(
        child: BigTextWidget(
          text: text,
          color: textColor,
        ),
      ),
    );
  }
}
