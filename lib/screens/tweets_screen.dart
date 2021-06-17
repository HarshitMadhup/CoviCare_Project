import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class TweetsScreen extends StatefulWidget {
  @override
  Tweet_Screen_State createState() => Tweet_Screen_State();
}

class Tweet_Screen_State extends State<TweetsScreen> {
  TextEditingController locationcontroller = new TextEditingController();
  TextEditingController resourcecontroller = new TextEditingController();
  String location = "ranchi";
  String resource = "plasma";
  WebViewController _controller;
  final Set<String> _favorites = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        backwardsCompatibility: true,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
        actions: <Widget>[
          // NavigationControls(_controller.future),
          // Menu(_controller.future, () => _favorites),
        ],
      ),
      body: Stack(children: [
        Column(children: [
          SizedBox(height: 77),
          SizedBox(
            height: MediaQuery.of(context).size.height - 150 + 7,
            // top: 30,
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: 'https://twitter.com/search?q=%23' +
                  location +
                  '%20%23' +
                  resource +
                  '&src=typed_query',
              onWebViewCreated: (WebViewController webViewController) {
                _controller = webViewController;
              },
            ),
          ),
        ]),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height / 4.7,
            width: double.infinity,
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.purple),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue[900], Colors.blue[200], Colors.white]),
                boxShadow: [BoxShadow(color: Colors.blue[900], blurRadius: 30)],
                color: Colors.blue[300],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tweets",
                        style: GoogleFonts.barlow(
                            shadows: [
                              BoxShadow(color: Colors.blue[900], blurRadius: 20)
                            ],
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.normal),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 53,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            return _displayTextInputDialog(context);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 2.5,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue[900], blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Text(
                              'Select Location',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            return _resource(context);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 2.5,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue[900], blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Text(
                              'Select Resource Type',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                        ),
                      ])
                ],
              ),
            ),
          ),
        ),
        Text(resource)
      ]),
      // floatingActionButton: _bookmarkButton(),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        barrierColor: Colors.blue[50],
        context: context,
        builder: (context) {
          return AlertDialog(
            titleTextStyle: GoogleFonts.lato(color: Colors.black),
            elevation: 20,
            backgroundColor: Colors.blue[50],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Text(
              'Enter Location',
              style: GoogleFonts.lato(color: Colors.black),
            ),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  //  valueText = value;
                });
              },
              controller: locationcontroller,
              decoration: InputDecoration(hintText: "Location"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.transparent,
                textColor: Colors.green,
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    location = locationcontroller.text.toString();
                    _controller.loadUrl(
                      'https://twitter.com/search?q=%23' +
                          location +
                          '%20%23' +
                          resource +
                          '&src=typed_query',
                    );

                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }

  Future<void> _resource(BuildContext context) async {
    return showDialog(
        barrierColor: Colors.black,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Enter Location'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  resource = value;
                });
              },
              controller: resourcecontroller,
              decoration: InputDecoration(hintText: "Resource"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.transparent,
                textColor: Colors.green,
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    resource = resourcecontroller.text.toString();

                    Navigator.pop(context);
                    _controller.loadUrl(
                      'https://twitter.com/search?q=%23' +
                          location +
                          '%20%23' +
                          resource +
                          '&src=typed_query',
                    );
                    print(resource);
                  });
                },
              ),
            ],
          );
        });
  }
}
