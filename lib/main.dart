import 'package:flutter/material.dart';
import 'story_brain.dart';

//Step 15 - Run the app and see if you can see the screen update with the first story.
// Delete this  if it looks as you expected.

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

//Done  Step 9 - Create a new storyBrain object from the StoryBrain class.
StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'), // ✅ Relative path (no leading slash)
            fit: BoxFit.cover,
          ),
        ),
        //Done Step 1 - Add background.png to this Container as a background image.
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    // Get current story
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    //Done Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.

                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    print('get story 1');
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red, // 👈 use styleFrom for button styling
                  ),
                  child: Text(
                    //Done  Step 13 - Use the storyBrain to get the text for choice 1.
                    storyBrain.getChoice1(), // <-- Call method, don't define it here
                    style: TextStyle(
                        fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                // Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                // Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: TextButton(
                  onPressed: () {
                    print('get story 2');
                    setState(() {
                      storyBrain.nextStory(2);
                    });
                    //Done Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, // 👈 use styleFrom for button styling
                  ),
                  child: Text(
                    //Done Step 14 - Use the storyBrain to get the text for choice 2.
                    storyBrain.getChoice2(), // <-- Call method, don't define it here
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
