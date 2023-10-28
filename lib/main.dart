import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var index = 0;
  final pages = [
    const TasksPage(),
    const NewTasksPage(),
    const SettingsPage(),
  ];

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            // App Bar
            appBar: AppBar(
                    title: const Text('ToDo'),
                    backgroundColor: Color.fromARGB(255, 255, 34, 0) ,
            ),
            
            // Body
            body: pages[index],

            // Buttom Navigatin Bar
            bottomNavigationBar: NavigationBar(                                                                     
                                              selectedIndex: index,
                                              onDestinationSelected: (i) => 
                                                                    setState(() => index = i),
                                              destinations: const [ NavigationDestination(icon: Icon(Icons.calendar_month_outlined), label: 'Tasks'),
                                                                     NavigationDestination(icon: Icon(Icons.add_circle_outline), label: 'New'),
                                                                     NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'Settings'),
                                                                  ],
                                              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                                              height: 50,   
                                              indicatorColor: Color.fromARGB(255, 255, 34, 0)         
                                               ),
            
      ),
    );
  }
}





// Home, Tasks Page
class TasksPage extends StatelessWidget {
  const TasksPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return (const Scaffold(
      body: Text('Tasks'),
    ));
  }
}




// Add new task page
class NewTasksPage extends StatelessWidget {
  const NewTasksPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return(const Scaffold(
      body: Text('New'),
    ));
  }
}




// Settings
class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return (const Scaffold(
      body: Text('Settings'),
    ));
  }
}