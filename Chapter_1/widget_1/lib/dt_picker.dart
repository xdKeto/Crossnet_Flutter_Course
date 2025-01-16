import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DtPicker extends StatefulWidget {
  const DtPicker({super.key});

  @override
  State<DtPicker> createState() => _DtPickerState();
}

class _DtPickerState extends State<DtPicker> {
  var tanggalcontroller = TextEditingController();
  var timecontroller = TextEditingController();

  // DateFormat dateFormat = DateFormat('yyyy-MM-dd');

  var selectedTime = const TimeOfDay(hour: 00, minute: 00);
  var parsedTime = DateTime.now();
  String formattedTime = '';
  String formattedTime2 = '';
  var selectedDate = DateTime.now();
  var parsedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            // print("pickedDate: pickedDate");
            if (pickedDate != null && pickedDate != selectedDate) {
              setState(() {
                selectedDate = pickedDate;

                tanggalcontroller.text =
                    DateFormat('yyyy-MM-dd').format(selectedDate);
              });
            }
          },
          child: TextFormField(
            controller: tanggalcontroller,
            // initialValue: selectedDate.toString(),
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Birth date',
              labelStyle: TextStyle(
                color: Colors.blueGrey,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              suffixIcon: Icon(Icons.date_range),
            ),
            onChanged: (value) {},
          ),
        ),
        InkWell(
          onTap: () async {
            TimeOfDay? pickedTime = await showTimePicker(
              initialTime: TimeOfDay.now(),
              context: context,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(alwaysUse24HourFormat: true),
                  child: child ?? Container(),
                );
              },
            );
            // print("pickedTime: pickedTime");
            if (pickedTime != null) {
              setState(() {
                selectedTime = pickedTime;
                parsedTime = DateTime(
                    2023, 01, 01, selectedTime.hour, selectedTime.minute);
                formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                timecontroller.text = formattedTime;
              });
            }
          },
          child: TextFormField(
            controller: timecontroller,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Working hour',
              labelStyle: TextStyle(
                color: Colors.blueGrey,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              suffixIcon: Icon(Icons.timer),
            ),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
