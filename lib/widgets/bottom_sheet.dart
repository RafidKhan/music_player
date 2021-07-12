import 'package:explore_music/pages/bottom_sheet_UI_screen.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  String trackName;
  Image albumArt;
  String trackDuration;

  BottomSheetWidget({this.trackName, this.albumArt, this.trackDuration});

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  String getTrackName;
  String getTrackDuration;
  Image getAlbumArt;

  @override
  void initState() {
    getTrackName = widget.trackName.toString();
    getTrackDuration = widget.trackDuration.toString();
    getAlbumArt = widget.albumArt;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
       Container(
        height: MediaQuery.of(context).size.height * 2.0,
        color: Colors.transparent,
        child: PlaySongScreen(
          getTrackName: getTrackName,
          getTrackDuration: getTrackDuration,
          getAlbumArt: getAlbumArt,
        ),
    );
  }
}
