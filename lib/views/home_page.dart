import 'package:app_snapping/shared/app_bar.dart';
import 'package:app_snapping/shared/default_grabbing.dart';
import 'package:app_snapping/shared/dummy_content.dart';
import 'package:app_snapping/views/above_page.dart';
import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DarkAppBar(title: "Prueba Snapping Sheet").build(context),
        body:
        SnappingSheet(
        lockOverflowDrag: true,
        snappingPositions: const [
          SnappingPosition.factor(
            grabbingContentOffset: GrabbingContentOffset.middle,
            positionFactor: 1.0,
          ),
          SnappingPosition.factor(
            snappingCurve: Curves.elasticOut,
            snappingDuration: Duration(milliseconds: 1750),
            positionFactor: 0.5,
          ),
          SnappingPosition.factor(
            positionFactor: 0.1,
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
        ],
        // child: DummyBackgroundContent(),
        grabbingHeight: 75,
        grabbing: const DefaultGrabbing(
          reverse: true,
        ),
        sheetAbove: SnappingSheetContent(
          childScrollController: _scrollController,
          draggable: true,
          child: DummyContent(
            reverse: true,
            controller: _scrollController,
          ),
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                  ),
                  child: Text("Arriba"),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AbovePage())),
                ),
              ],
            ),
        ),
      ),
        // Container(
        //   color: Colors.white,
        //   child: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         ElevatedButton(
        //           style: ElevatedButton.styleFrom(
        //             padding: EdgeInsets.symmetric(horizontal: 50),
        //             primary: Colors.blue,
        //             onPrimary: Colors.white,
        //           ),
        //           child: Text("Arriba"),
        //           onPressed: () => Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => AbovePage())),
        //         ),
        //       ],
        //     ),
        //   ),
        // )
        );
  }
}