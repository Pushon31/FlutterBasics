import 'package:flutter/material.dart';
import 'package:homefirstflutterproject/ui_helper/util.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: MyDashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyDashboardScreen extends StatefulWidget {
  @override
  _MyDashboardScreenState createState() => _MyDashboardScreenState();
}

class _MyDashboardScreenState extends State<MyDashboardScreen> {
  var arrNames = ["Abu", "Haider", "Rony", "Mushfiq"];
  var emailText = TextEditingController();
  var passText = TextEditingController();
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Dashboard"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Text("Select Date"),
          ElevatedButton(
            onPressed: () async {
              DateTime? datePicked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
              );

              if (datePicked != null) {
                print("Date selected ${datePicked.day}-${datePicked.month}");
              }
            },
            child: Text("Select"),
          ),
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? timePicked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input,
              );

              if (timePicked != null) {
                print("Time selected ${timePicked.hour}-${timePicked.minute}");
              }
            },
            child: Text("Select"),
          ),
        ],
      ),
      // body: Center(
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(
      //           "Current time : ${DateFormat('jms').format(time)}",
      //           style: TextStyle(fontSize: 16),
      //         ),

      //         ElevatedButton(
      //           onPressed: () {
      //             setState(() {
      //               time = DateTime.now(); // update time
      //             });
      //           },
      //           child: Text("Current Time"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: Container(
      //     width: 300,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextField(
      //           controller: emailText,
      //           decoration: InputDecoration(
      //             hintText: "Enter Email",
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(21),
      //               borderSide: BorderSide(color: Colors.deepOrange),
      //             ),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(21),
      //               borderSide: BorderSide(color: Colors.deepOrange),
      //             ),

      //             // suffixText: "Username Already Exists.",
      //             prefixIcon: Icon(Icons.email),
      //           ),
      //         ),
      //         Container(height: 11),
      //         TextField(
      //           obscureText: true,
      //           obscuringCharacter: "*",
      //           controller: passText,
      //           decoration: InputDecoration(
      //             hintText: "Enter Password",
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(21),
      //               borderSide: BorderSide(color: Colors.blue),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(21),
      //               borderSide: BorderSide(color: Colors.deepOrange),
      //             ),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(21),
      //               borderSide: BorderSide(color: Colors.deepOrange),
      //             ),
      //             suffixIcon: IconButton(
      //               icon: Icon(Icons.remove_red_eye, color: Colors.red),
      //               onPressed: () {},
      //             ),
      //             prefixIcon: Icon(Icons.password),
      //           ),
      //         ),
      //         ElevatedButton(
      //           onPressed: () {
      //             String uEmail = emailText.text.toString();
      //             String uPass = passText.text.toString();

      //             print("Email = " + uEmail + " Password = " + uPass);
      //           },
      //           child: Text("Login"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: Card(
      //     elevation: 20,
      //     shadowColor: Colors.blue,

      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Hello Bro", style: myTextStyle21()),
      //     ),
      //   ),
      // ),
      // body: Column(
      //   children: [
      //     Text(
      //       "Text1",
      //       style: Theme.of(
      //         context,
      //       ).textTheme.headlineLarge!.copyWith(color: Colors.red),
      //     ),
      //     Text("Text2", style: myTextStyle21(textColor: Colors.green)),
      //     Text("Text3", style: myTextStyle15()),
      //     Text("Text4", style: myTextStyle11()),
      //   ],
      // ),

      // body: Column(
      //   children: [
      //     Text(
      //       "Text1",
      //       style: Theme.of(
      //         context,
      //       ).textTheme.headlineLarge!.copyWith(color: Colors.red),
      //     ),
      //     Text(
      //       "Text2",
      //       style: Theme.of(
      //         context,
      //       ).textTheme.titleMedium!.copyWith(color: Colors.blueAccent),
      //     ),
      //     Text("Text3", style: Theme.of(context).textTheme.headlineLarge),
      //     Text("Text4", style: Theme.of(context).textTheme.titleMedium),
      //   ],
      // ),
      // body: Center(
      //   child: Text(
      //     "Hello World",
      //     style: TextStyle(
      //       fontFamily: "FontMain",
      //       fontWeight: FontWeight.w500,
      //       fontSize: 55,
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: CircleAvatar(
      //     child: Container(
      //       width: 90,
      //       height: 90,
      //       child: Column(
      //         children: [
      //           Container(
      //             width: 60,
      //             height: 60,
      //             child: Image.asset("assets/images/cat.jpg"),
      //           ),
      //           Text("Name", style: TextStyle(fontSize: 4)),
      //         ],
      //       ),
      //     ),
      //     backgroundColor: Colors.transparent,
      //     radius: 50,
      //   ),
      // ),
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       leading: Text("${index + 1}"),
      //       title: Text(arrNames[index]),
      //       subtitle: Text("Number"),
      //       trailing: Icon(Icons.facebook),
      //     );
      //   },
      //   itemCount: arrNames.length,
      //   separatorBuilder: (context, index) {
      //     return Divider(height: 100, thickness: 2);
      //   },
      // ),
      // body: Container(
      //   color: Colors.black,
      //   margin: EdgeInsets.all(11),
      //   child: Padding(
      //     padding: const EdgeInsets.all(11),
      //     child: Text(
      //       "Hello World",
      //       style: TextStyle(fontSize: 25, color: Colors.blue),
      //     ),
      //   ),
      // ),

      // body: Padding(
      //   padding: const EdgeInsets.only(top: 15, left: 15),
      //   child: Text("Hello World", style: TextStyle(fontSize: 25)),
      // ),

      // body: Column(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(width: 100, height: 100, color: Colors.orange),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       child: Container(width: 100, height: 100, color: Colors.black),
      //     ),
      //     Container(width: 100, height: 100, color: Colors.red),
      //     Expanded(
      //       flex: 3,
      //       child: Container(width: 100, height: 100, color: Colors.green),
      //     ),
      //   ],
      // ),

      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.black,
      //   child: Center(
      //     child: Container(
      //       width: 150,
      //       height: 150,

      //       decoration: BoxDecoration(
      //         color: Colors.blue,
      //         borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(11),
      //           bottomRight: Radius.circular(25),
      //         ),
      //         border: Border.all(width: 3, color: Colors.amber),
      //         boxShadow: [
      //           BoxShadow(blurRadius: 11, spreadRadius: 7, color: Colors.amber),
      //         ],

      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
