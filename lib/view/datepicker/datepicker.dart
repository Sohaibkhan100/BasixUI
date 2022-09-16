import 'package:flutter/material.dart';
import 'package:task2/view/datepicker/widgets/calenderwidget.dart';
import 'package:task2/view/datepicker/widgets/dropdownwidget.dart';
import 'package:task2/view/datepicker/widgets/timingwidget.dart';
import 'package:task2/widgets/customtext.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  List<String> _locations = ['text1', 'text2', 'text3', 'text4']; // Option 2
  String? _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.lightBlue,
          ),
          title: const Center(
            child: Text(
              'Pickp Date',
              style: TextStyle(
                  color: Colors.lightBlue, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.lightBlue,
            )
          ],
          surfaceTintColor: Colors.lightBlue,
          elevation: 5,
          backgroundColor: Colors.white,
          shadowColor: Colors.lightBlue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: textWidget(
                        textContent: 'When would you like your pickup date',
                        textColor: Color.fromARGB(255, 139, 138, 138)),
                  ),
                  const Icon(
                    Icons.calendar_month_sharp,
                    color: Colors.lightBlue,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalenderWidget(
                      day: 'FRI',
                      date: "25 jun",
                      date1: 'yesterday',
                      colortxt1: Colors.white,
                      colortxt2: Color.fromARGB(255, 139, 138, 138),
                      colortxt3: Color.fromARGB(255, 139, 138, 138),
                      fontsize1: MediaQuery.of(context).size.height * 0.020,
                      fontsize2: MediaQuery.of(context).size.height * 0.016,
                      fontsize3: MediaQuery.of(context).size.height * 0.016,
                      colorbox1: Colors.grey,
                      colorbox2: Colors.white),
                  CalenderWidget(
                      day: 'SAT',
                      date: "25 jun",
                      date1: 'Today',
                      colortxt1: Colors.white,
                      colortxt2: Color.fromARGB(255, 139, 138, 138),
                      colortxt3: Color.fromARGB(255, 139, 138, 138),
                      fontsize1: MediaQuery.of(context).size.height * 0.020,
                      fontsize2: MediaQuery.of(context).size.height * 0.016,
                      fontsize3: MediaQuery.of(context).size.height * 0.016,
                      colorbox1: Colors.blue,
                      colorbox2: Colors.white),
                  CalenderWidget(
                      day: 'SUN',
                      date: "27 jun",
                      date1: 'Tomorrow',
                      colortxt1: Colors.black,
                      colortxt2: Color.fromARGB(255, 139, 138, 138),
                      colortxt3: Color.fromARGB(255, 139, 138, 138),
                      fontsize1: MediaQuery.of(context).size.height * 0.020,
                      fontsize2: MediaQuery.of(context).size.height * 0.016,
                      fontsize3: MediaQuery.of(context).size.height * 0.016,
                      colorbox1: Colors.white,
                      colorbox2: Colors.white),
                  CalenderWidget(
                      day: 'MON',
                      date: "29 jun",
                      date1: 'Blockday',
                      colortxt1: Colors.white,
                      colortxt2: Color.fromARGB(255, 139, 138, 138),
                      colortxt3: Color.fromARGB(255, 139, 138, 138),
                      fontsize1: MediaQuery.of(context).size.height * 0.020,
                      fontsize2: MediaQuery.of(context).size.height * 0.016,
                      fontsize3: MediaQuery.of(context).size.height * 0.016,
                      colorbox1: Colors.red,
                      colorbox2: Colors.white)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: textWidget(
                    textContent: 'Available Time slots',
                    textColor: Color.fromARGB(255, 139, 138, 138)),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      timingslotWidget(
                        textContent: '7am-9pm',
                        textColor: Colors.white,
                        colorbox: Colors.lightBlue,
                      ),
                      timingslotWidget(
                        textContent: '10am-12pm',
                        textColor: Color.fromARGB(255, 139, 138, 138),
                        colorbox: Colors.white,
                      ),
                      timingslotWidget(
                        textContent: '1pm-2pm',
                        textColor: Color.fromARGB(255, 139, 138, 138),
                        colorbox: Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      timingslotWidget(
                        textContent: '4pm-6am',
                        textColor: Color.fromARGB(255, 139, 138, 138),
                        colorbox: Colors.white,
                      ),
                      timingslotWidget(
                        textContent: '8pm-10pm',
                        textColor: Color.fromARGB(255, 139, 138, 138),
                        colorbox: Colors.white,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              DropdownWidget(
                Child: Center(
                  child: ListTile(
                    leading: Text(
                      'Repeat Pickup',
                      style:
                          TextStyle(color: Color.fromARGB(255, 139, 138, 138)),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.toggle_off,
                          color: Colors.lightBlue,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    textWidget(
                        textSize: MediaQuery.of(context).size.height * 0.015,
                        textContent: ' How Often Repeat? ',
                        textColor: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ],
                ),
              ),
              DropdownWidget(
                Child: Center(
                  child: ListTile(
                    leading: const Text(
                      'Everyweek',
                      style:
                          TextStyle(color: Color.fromARGB(255, 139, 138, 138)),
                    ),
                    trailing: DropdownButton(
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    textWidget(
                        textSize: MediaQuery.of(context).size.height * 0.015,
                        textContent: ' How Many Times? ',
                        textColor: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ],
                ),
              ),
              DropdownWidget(
                Child: Center(
                  child: ListTile(
                    leading: const Text('1'),
                    trailing: DropdownButton(
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ContinueButton()
            ],
          ),
        ),
      ),
    );
  }
}
