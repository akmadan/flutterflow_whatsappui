import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'WhatsApp',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('IconButton pressed ...');
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              print('IconButton pressed ...');
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
            iconSize: 30,
          )
        ],
        centerTitle: false,
        elevation: 4,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Color(0xFF25D366),
        elevation: 8,
        child: Icon(
          Icons.message,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.primaryColor,
                indicatorColor: FlutterFlowTheme.secondaryColor,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.camera_alt,
                    ),
                  ),
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Text(
                      'Tab View 1',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 4546487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'I am Sam',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdkAI_6A811_L6PpHE9wioJu_AodbupwjAWwd094uCfuHL7oKbHWMAfJGt3bJVbWkwTmo&usqp=CAU',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 946567212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hello',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://i.pinimg.com/originals/32/38/6c/32386c72c7f2a8b5c1a10fc51c149cb1.jpg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sam halder',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://v.cdn.vine.co/r/thumbs/7BBFD9F6741001009555343618048_14375368a64.3.4.mp4_.h0bQhclekDe.d93NrKYlAAnFPh_0MZ4ytGv6n2jVNfDUCsiiScO0NCYXe4Lt2ER.jpg?versionId=hxKBukyR5.deHYpG1a.qOKnPNUD5HgEN',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://i.redd.it/39sunkhvpw341.jpg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://dz9yg0snnohlc.cloudfront.net/new-the-enjoyable-art-of-learning-to-talk-to-random-people-2.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://i1.wp.com/thatrandomagency.com/wp-content/uploads/2020/05/Lauren_headshot.png?resize=640%2C873&ssl=1',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://pbs.twimg.com/media/BcINeMVCIAABeWd.jpg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91 9256487212',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Hey there, How are u?',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '09:50 AM',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              'https://pbs.twimg.com/media/BcINeMVCIAABeWd.jpg',
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'My Status',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Tap to add the status',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Divider()
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 120,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          'https://dz9yg0snnohlc.cloudfront.net/new-the-enjoyable-art-of-learning-to-talk-to-random-people-2.png',
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '+91 892535995',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '49 Minutes ago',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 120,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          'data:image/jpeg;base64,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',
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '+89655762345',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '1 Hour ago',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://pbs.twimg.com/media/BcINeMVCIAABeWd.jpg',
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Akshit Madan',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.arrow_downward_rounded,
                                          color: Color(0xFFFF0000),
                                          size: 20,
                                        ),
                                        Text(
                                          '1 Hour Ago',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: Icon(
                                          Icons.phone,
                                          color: Color(0xFF25D366),
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://pbs.twimg.com/media/BcINeMVCIAABeWd.jpg',
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Akshit Madan',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.arrow_downward_rounded,
                                          color: Color(0xFFFF0000),
                                          size: 20,
                                        ),
                                        Text(
                                          '1 Hour Ago',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: Icon(
                                          Icons.phone,
                                          color: Color(0xFF25D366),
                                          size: 30,
                                        ),
                                        iconSize: 30,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
