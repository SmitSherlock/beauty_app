import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final fatigue = {
  "questions": [
    {
      "question": "How is your sleep patten",
      "type": "multiple",
      "options": {
        "Oversleep (10-12 hrs)": 1,
        "Lack of sleep (Less than 4hrs)": 1,
        "Proper sleep (6 hrs- 8hrs)": 0
      }
    },
    {
      "question": "Do you have a frequent headache?",
      "type": "multiple",
      "options": {"Yes": 1, "No": 0}
    }
  ]
};

// 'Question':'How is your sleep patten',: ['Oversleep (10-12 hrs)', 'No'],
// 'Do you have a frequent headache?': ['Yes', 'No'],
// 'Are you facing any kind of stress?': ['Yes', 'No'],
// 'How are your eyes?': ['Watery','Dry','Normal'],
// ' Do you have blurred vision at times?':['Yes','No'],
// 'Do you blink a lot while using a mobile or watching tv?':['Yes','No']

var fatigueScore = 0;
var eyeStrainScore = 0;
var allergiesScore = 0;
var dehydrationScore = 0;
var sunExposureScore = 0;
var geneticsScore = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: QuestionBuilder()),
    );
  }
}

class Question2 extends StatelessWidget {
  const Question2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you have a frequent headache?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                fatigueScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question3()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                fatigueScore++;

                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question3()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question3 extends StatelessWidget {
  const Question3({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Are you facing any kind of stress?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                fatigueScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question4()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                fatigueScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question4()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question4 extends StatelessWidget {
  const Question4({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you get common cold often?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                allergiesScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question5()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                allergiesScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question5()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question5 extends StatelessWidget {
  const Question5({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you have any other sinus infection?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                allergiesScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question6()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                allergiesScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question6()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question6 extends StatelessWidget {
  const Question6({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you feel pain or any kind of irritation around your sinuses?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                allergiesScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question7()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                allergiesScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question7()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question7 extends StatelessWidget {
  const Question7({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you drink enough amount of water in a day? (1-1.5 liters)',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                dehydrationScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question8()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                dehydrationScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question8()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('I don’t know')),
          RaisedButton(
              onPressed: () {
                dehydrationScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question8()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No'))
        ],
      ),
    ));
  }
}

class Question8 extends StatelessWidget {
  const Question8({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Does your under-eye skin feel dry?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                dehydrationScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question9()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                dehydrationScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question9()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question9 extends StatelessWidget {
  const Question9({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you move out in the sun everyday?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                sunExposureScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question10()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                sunExposureScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question10()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question10 extends StatelessWidget {
  const Question10({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'How long do you face the sun?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                sunExposureScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question11()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                sunExposureScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question11()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question11 extends StatelessWidget {
  const Question11({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you cover your skin when out in the sun?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                sunExposureScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question12()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                sunExposureScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question12()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question12 extends StatelessWidget {
  const Question12({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Does any of your family members have the same problem?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                geneticsScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question13()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                geneticsScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question13()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question13 extends StatelessWidget {
  const Question13({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'How are your eyes?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                eyeStrainScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question14()),
                );
              },
              child: const Text("Watery")),
          RaisedButton(
              onPressed: () {
                eyeStrainScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question14()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('Dry')),
          RaisedButton(
              onPressed: () {
                eyeStrainScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question14()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('Normal')),
        ],
      ),
    ));
  }
}

class Question14 extends StatelessWidget {
  const Question14({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you have blurred vision at times?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                eyeStrainScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question15()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                eyeStrainScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question15()),
                );
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Question15 extends StatelessWidget {
  const Question15({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Do you blink a lot while using a mobile or watching tv?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                eyeStrainScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Answer()),
                );
              },
              child: const Text("Yes")),
          RaisedButton(
              onPressed: () {
                eyeStrainScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Answer()),
                );
                print("Lack");
              },
              child: const Text('No')),
        ],
      ),
    ));
  }
}

class Answer extends StatelessWidget {
  const Answer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (fatigueScore >= 2) {
      return Scaffold(
          body: Center(
        child: Text(
          'Dark circles:\n'
          'These are dark colored blemishes around the eyes.\n'
          'They may be due to different underlying causes.\n'
          'The conditions will differ from person to person.\n',
          textDirection: TextDirection.ltr,
        ),
      ));
    }
    // else if()
    // {

    // }

    // appBar: AppBar(
  }
}

class QuestionBuilder extends StatelessWidget {
  const QuestionBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'How is your sleep pattern?',
            style: TextStyle(
                fontFamily: "Fascinate",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black54),
          ),
          Padding(padding: const EdgeInsets.all(6.0)),
          RaisedButton(
              onPressed: () {
                fatigueScore++;
                // print("Oversleep (10-12 hrs)");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question2()),
                );
              },
              child: const Text("Oversleep (10-12 hrs)")),
          RaisedButton(
              onPressed: () {
                fatigueScore++;
                print("Lack of sleep (Less than 4hrs)");
              },
              child: const Text('Lack of sleep (Less than 4hrs)')),
          RaisedButton(
              onPressed: () {
                fatigueScore++;
                print("Proper sleep (6 hrs- 8hrs)");
              },
              child: const Text('Proper sleep (6 hrs- 8hrs)'))
        ],
      ),
    );
  }
}
