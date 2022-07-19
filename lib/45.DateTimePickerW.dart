import 'package:flutter/material.dart';
import 'main.dart';
import 'package:intl/intl.dart'; //this is an external package for formatting date and time

void main() {
  runApp(const DateTimePickerW());
}

class DateTimePickerW extends StatelessWidget {
  const DateTimePickerW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  //Method for showing the date picker
  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime(DateTime.now().year),
            firstDate: DateTime(DateTime.now().year - 20),
            lastDate: DateTime(DateTime.now().year + 2))
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        _selectedDate = pickedDate;
      });
    });
  }

  //Method for showing the time picker
  void _pickTimeDialog() {
    showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            initialEntryMode: TimePickerEntryMode.dial,
            confirmText: "Confirm",
            cancelText: "Not Now",
            helpText: "Choose Time")
        .then((pickedTime) {
      //then usually do the future job
      if (pickedTime == null) {
        //if user tap cancel then this function will stop
        return;
      }

      setState(() {
        _selectedTime = pickedTime;
      });
    });
  }

  String formatTimeOfDay(TimeOfDay tod) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm();  //"6:00 AM"
    return format.format(dt);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // For Display in Screen
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Date Time Picker"),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              }),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_selectedDate ==
                      null //ternary expression to check if date is null
                  ? 'No date was chosen!'
                  : 'Picked Date: ${DateFormat.yMd().format(_selectedDate!)}'),
              const SizedBox(height: 20),
              RaisedButton(
                  onPressed: _pickDateDialog, child: const Text('Select Date')),
              const SizedBox(height: 20),
              Text(_selectedTime ==
                      null //ternary expression to check if date is null
                  ? 'No Time was chosen!'
                  : 'Picked Time: ${formatTimeOfDay(_selectedTime!)}'),
              const SizedBox(height: 20),
              RaisedButton(
                  onPressed: _pickTimeDialog, child: const Text('Select Time')),
            ],
          ),
        ),
      ),
    );
  }
}
