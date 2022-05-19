import 'package:booking/theme/theme_file.dart';
import 'package:booking/widgets/big_text_widget.dart';
import 'package:booking/widgets/textInputWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookingForm extends ConsumerStatefulWidget {
  const BookingForm({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BookingFormState();
}

class _BookingFormState extends ConsumerState<BookingForm> {
  final List<String> buggageChoices = <String>["Yes", "No"];
  String haveBuggage = "No";
  void OnBuggageSelection(selectedPlace) {
    setState(() {
      haveBuggage = selectedPlace;
    });
  }

  final TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          right: 0,
          left: 0,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ThemeFile.bookingpaleBlueGrey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2020/02/28/21/15/space-4888643__340.jpg"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: BigTextWidget(
                    text: "Here We go",
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          height: 40,
                          child: TextFormField(
                            controller: _dateController,
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.calendar_today,
                                color: ThemeFile.bookingBlack1,
                              ),
                              labelText: "Date",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            BigTextWidget(
                              text: "Buggage:",
                              size: 16,
                              color: ThemeFile.bookingBlueGrey,
                            ),
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: ThemeFile.bookingwhite),
                              child: DropdownButton(
                                  underline: Container(
                                    color: ThemeFile.bookingwhite,
                                  ),
                                  isExpanded: true,
                                  value: haveBuggage,
                                  items: buggageChoices.map((place) {
                                    return DropdownMenuItem(
                                        value: place, child: Text(place));
                                  }).toList(),
                                  onChanged: OnBuggageSelection),
                            )
                          ],
                        )
                      ],
                    ),
                    TextInputWidget(
                        controller: _dateController,
                        icon: Icons.person,
                        inputType: TextInputType.text,
                        label: "Full Name"),
                    TextInputWidget(
                        controller: _dateController,
                        icon: Icons.phone,
                        inputType: TextInputType.phone,
                        label: "Phone Number"),
                    TextInputWidget(
                        controller: _dateController,
                        icon: Icons.email_outlined,
                        inputType: TextInputType.emailAddress,
                        label: "Email Address"),
                    Container(
                      width: 150,
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ThemeFile.bookingYellow),
                      child: Center(child: BigTextWidget(text: "Save details")),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
