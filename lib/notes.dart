/*
widget lifecycle:
  1. initState(): initiated when stateful widget's state object is initialzied
  2. build(): initiated when widget is built for 1st time and after setState is called
  3. dispose(): initiated right before widget is deleted (descructor?)
*/

/*
3rd approach- (switching screens)
class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = startScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = const QuestionsScreen;
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 71, 11, 93),
              Color.fromARGB(255, 74, 8, 98)
            ]),
          ),
          // child: activeScreen, //child wants a widget
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
        // backgroundColor: Colors.deepPurple,
      ),
    );
  }
}

map-
PLEASE FUCKING WORK
*/

/*
  importing google fonts - 
    1. run command - flutter pub add google_fonts
    2. import 'package:google_fonts/google_fonts.dart';

*/

/*
  explicit vs implicit animations
  explicit - you control the entire animation
  more control adn complexity
*/