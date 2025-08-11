import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo1/Screens/widget/task_widget.dart';
import 'package:todo1/extention/Space_exs.dart';
import 'package:todo1/utils/AppColors.dart';
import 'package:todo1/utils/String.dart';

class HomeView extends StatefulWidget{
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<int> testing = [1,2,3];
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton:
        GestureDetector(
          onTap: (){
            // on tap functionality goes here
          },
          child:
          Material(
            borderRadius: BorderRadius.circular(15.0),
            elevation: 10,
            child: Container(
                width: 60,
                height: 60,

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.add,color: Colors.white,size: 30)
            ),
          ),
        ),
        body: SafeArea(child:
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(
                          value: 1/3,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation(Colors.blue),),
                        ),
                      25.w,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppString.mainTitle, style: textTheme.displayLarge,),
                          3.h,
                          Text("1 Of 3 Task")
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  indent: 100,
                ),

                SizedBox(
                  width: double.infinity,
                  height: 700,
                  child:testing.isNotEmpty? ListView.builder(scrollDirection: Axis.vertical,
                      itemCount: testing.length,
                      itemBuilder: (context,index){
                    return Dismissible(
                        direction: DismissDirection.horizontal,
                        onDismissed: (_){
                          // dismissed task from db
                        },
                        background: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.delete_outline,color:  Colors.grey,),
                            Text("Delete",style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        key: Key(index.toString()),
                    child: TaskWidget());
                  }): Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeIn(
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Lottie.asset(
                            'assets/lottie/1.json',
                            animate: testing.isNotEmpty ? false : true,
                          )
                        ),
                      ),
                      FadeInUp(
                        child: Text(AppString.doneAllTask),
                      )
                    ],
                  ),
                )
              ]
          ),
        ),
        )
    );
  }

}
