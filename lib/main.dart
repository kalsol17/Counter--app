import 'package:flutter/material.dart';

void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Homepage()
    ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('A counter App that increases when the button is Clicked.',
            style: TextStyle(fontWeight: FontWeight.bold),),
            Text('You pressed $counter times'),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                counter ++;
              },);
            }, 
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: Text('Press me',style: TextStyle(color:Colors.white,fontSize: 20))
            ),
          ],),),
    );
  }
}