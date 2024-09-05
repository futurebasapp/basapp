import 'package:basapp/view/screens/confirmCheckout.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Schedule extends StatefulWidget {
  final Map<String, dynamic> makerData;
  const Schedule({super.key, required this.makerData});

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  final String _selectedPaymentMethod = 'Dinheiro';

  List<DateTime> generateDays(DateTime selectedDate) {
    List<DateTime> days = [];
    for (int i = -7; i <= 7; i++) {
      days.add(selectedDate.add(Duration(days: i)));
    }
    return days;
  }

  List<TimeOfDay> generateTimes() {
    List<TimeOfDay> times = [];
    for (int i = 0; i < 24; i++) {
      times.add(TimeOfDay(hour: i, minute: 0));
      times.add(TimeOfDay(hour: i, minute: 30));
    }
    return times;
  }

  @override
  Widget build(BuildContext context) {
    List<DateTime> days = generateDays(_selectedDate);
    List<TimeOfDay> times = generateTimes();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          const Texto(
            text:
                "Selecione o melhor dia e horários \n            para o agendamento",
            gradient: LinearGradient(colors: [Colors.black, Colors.black]),
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 30),
          const Texto(
            text: "Qual o melhor dia para você?",
            gradient: LinearGradient(colors: [Colors.black, Colors.black]),
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: days.length,
              itemBuilder: (context, index) {
                DateTime day = days[index];
                bool isSelected = day.day == _selectedDate.day &&
                    day.month == _selectedDate.month &&
                    day.year == _selectedDate.year;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDate = day;
                    });
                  },
                  child: Container(
                    width: 70,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blue : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat('EEE').format(day),
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          day.day.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Texto(
                text: "Qual o melhor horário para você?",
                gradient: LinearGradient(colors: [Colors.black, Colors.black]),
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: times.length,
              itemBuilder: (context, index) {
                TimeOfDay time = times[index];
                bool isSelected = time.hour == _selectedTime.hour &&
                    time.minute == _selectedTime.minute;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTime = time;
                    });
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blue : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        time.format(context),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          CustomButton(
            corTexto: Colors.black,
            gradient: const LinearGradient(colors: [Colors.grey, Colors.grey]),
            text: 'Selecionar horário',
            onPressed: () {
              String formattedDate =
                  DateFormat('dd/MM/yyyy').format(_selectedDate);
              String formattedTime = _selectedTime.format(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Confirmcheckout(
                    makerData: {
                      'nome': widget.makerData['nome'] ?? 'Nome padrão',
                      'empresa':
                          widget.makerData['empresa'] ?? 'Empresa padrão',
                      'preco': widget.makerData['preco'] ?? 0.00,
                      'maker_id': widget.makerData['maker_id'] ?? 'ID padrão',
                      'forma_pagamento': _selectedPaymentMethod,
                      'data': formattedDate,
                      'hora': formattedTime,
                    },
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
