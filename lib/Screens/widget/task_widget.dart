import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo1/utils/AppColors.dart';

class TaskWidget extends StatefulWidget{
  TaskWidget({Key? key}) : super(key: key);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        duration: const Duration(milliseconds: 600),
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(8),

        ),
        child: ListTile(
          leading: GestureDetector(
            onTap: () {
              // Implement on tap
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 600),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Done", style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              /*decoration: TextDecoration.lineThrough*/
            ),),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Descrption",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300)
              ),
              //Date of Task

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Text("Date",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300)
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}