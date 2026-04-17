import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zugar/features/loginregist/screen/login.dart';
import 'package:zugar/core/constant/app_colors.dart';
import 'package:zugar/model/home_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, User!'),
        backgroundColor: AppColors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(7, (index) {
            DateTime date = DateTime.now().add(Duration(days: index - 2));
            bool isToday =
                date.day == DateTime.now().day &&
                date.month == DateTime.now().month &&
                date.year == DateTime.now().year;
            bool isSelected = date.day == selectedDate.day;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedDate = date;
                });
              },

              child: Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 2.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: isSelected ? AppColors.primary : AppColors.grey100,
                  border: Border.all(
                    color: isSelected ? AppColors.primary : AppColors.grey300,
                    width: 1.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    isToday
                        ? '${date.day}, ${DateFormat('MMM').format(date)}'
                        : '${date.day}',
                    style: TextStyle(
                      color: isSelected ? AppColors.white : AppColors.primary,
                      fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
