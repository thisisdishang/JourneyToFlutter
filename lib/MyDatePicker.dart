import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class mydatepicker extends StatefulWidget {
  const mydatepicker({super.key});

  @override
  State<mydatepicker> createState() => _mydatepickerState();
}

class _mydatepickerState extends State<mydatepicker> {
  var selectDate = "Select Date";
  var selectTime = "Select Time";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker & TimePicker'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2025),
                );
                setState(() {
                  selectDate = DateFormat('yMd').format(datePicked!).toString();
                });
                if (datePicked != null) {
                  print(
                      'Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                }
              },
              child: Text('Show DatePicker'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              selectTime,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? timepicked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input);

                if (timepicked != null) {
                  print(
                      'Time Selected: ${timepicked.hour}:${timepicked.minute}');
                }

                setState(() {
                  selectTime = timepicked.toString();
                });
              },
              child: Text('Show TimePicker'),
            ),
          ],
        ),
      ),
    );
  }
}
