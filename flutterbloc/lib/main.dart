import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/demo_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      BlocProvider(
        create: (context) => DemoBloc(),
      )
    ],
    child: MaterialApp(
      home: Demo(),
    ),
  ));
  // runApp(MaterialApp(home: Demo(),));
}

// ToDo  date > 17/06/2022
// ToDo  1. Go For Bloc Plugins Setting> Plugins > Marketplace > Type Bloc > Install
// ToDo   2. create Stateless OR StateFull Widget For Your UI;
// Todo  3. Right Click On lib Folder And Select Bloc Class And Gives Name Same As Your Widget Name Here My Widget Name is  Demo Then Name Is Here Type Demo;
// Todo  4. You Can see 3 New Class Created  one Event one Is Bloc And last One State.. Name Respectively DemoEvent, DemoBloc and DemoState;

// Todo  Events and actions are the inputs of the BLoC  architecture.
//  They’re commonly created in response to user interactions with an interface, such as button presses or lifecycle events like page loads. When designing an app, we need to step back and define how users will interact with it.

//Todo States are the outputs of the BLoC architecture,
// and they represent part of your app’s common state. UI components can be notified of states and redraw portions of themselves based on the current state.

// A stream is a sequence of asynchronous data. The UI and BLoC listen to this stream and respond to any changes.

// todo 5. add  bloc: ,provider:  ,flutter_bloc:  package in pubspec.yaml;

// todo 6. Now You Can Start Code
// todo 7. First create Object OF Bloc Class ;

// todo 8. Set Intial Event in Bloc object set Intial Value And Create Constructor;
// todo 9 .now  add event   = >  Bloc

//  todo 10 . Goto Bloc class Create on method and EventIntial Value take and pass to State Class using Emit and particular Event Class;
// todo 11 . Create UI And Call method Using interface which You Want To Change;
// TODO 12 NOW Repeat A Proccess For Increment   > Event   > Bloc  > State  >UI;
//Todo State  class Is only gives Value So Yet Not Required increment class;
// Todo  Now  Your State Is Chnage Take in BlocBuilder(SubCriber);
// todo Before You Use State  first Cheak State Is chnage Or  not;
//todo  use multiprovider in run App

class Demo extends StatefulWidget {
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  DemoBloc? dd;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dd = BlocProvider.of<DemoBloc>(context);
    dd!.add(IntialEvent(15));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                dd!.add(increment());
              },
              icon: Icon(Icons.add)),
          BlocBuilder<DemoBloc, DemoState>(
            builder: (context, state) {
              if (state is IntialState) {
                return Text("${state.i}");
              }
              return Text("0");
            },
          ),
          IconButton(
              onPressed: () {
                dd!.add(Decremnt());
              },
              icon: Icon(Icons.minimize))
        ],
      ),
    );
  }
}
