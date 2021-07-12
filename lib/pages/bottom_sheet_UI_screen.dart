import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaySongScreen extends StatefulWidget {
  String getTrackName;
  String getTrackDuration;
  Image getAlbumArt;

  PlaySongScreen({this.getTrackName, this.getTrackDuration, this.getAlbumArt});

  @override
  _PlaySongScreenState createState() => _PlaySongScreenState();
}

class _PlaySongScreenState extends State<PlaySongScreen> {
  String showTrackName;
  String showTrackDuration;
  Image showAlbumArt;

  Image songStatusBtn;
  Image forwardBtn;
  Image rewindBtn;

  Image shuffleSong;
  Image repeatSong;

  int musicStatus;

  bool _playPause = true;

  // void musicStatusBtnCheck() {
  //   if (musicStatus == 0) {
  //     setState(() {
  //       songStatusBtn = Image.asset('assets/play.png');
  //     });
  //   } else if (musicStatus == 1) {
  //     setState(() {
  //       songStatusBtn = Image.asset('assets/pause.png');
  //     });
  //   }
  // }

  @override
  void initState() {
    showTrackName = widget.getTrackName.toString();
    showTrackDuration = widget.getTrackDuration.toString();
    showAlbumArt = widget.getAlbumArt;
    forwardBtn = Image.asset('assets/forward.png');
    rewindBtn = Image.asset('assets/rewind.png');
    musicStatus = 0;
    //musicStatusBtnCheck();

    shuffleSong = Image.asset('assets/shuffle.png');
    repeatSong = Image.asset('assets/repeat.png');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.grey[50], Colors.blueGrey[400]],
          ),
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Material(
                elevation: 40.0,
                child: Text(
                  "Now Playing",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Material(
                elevation: 50.0,
                child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: showAlbumArt,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                showTrackName,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Material(
                elevation: 20.0,
                child: Text(
                  showTrackDuration,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            SliderTheme(
              data: SliderThemeData(
                  trackHeight: 5,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
              child: Slider(
                value: 0,
                activeColor: Colors.blueGrey[900],
                inactiveColor: Colors.black87.withOpacity(0.2),
                onChanged: (value) {},
                min: 0,
                max: 20,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SHUFFLE
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: GestureDetector(
                        child: Material(
                          elevation: 50.0,
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: shuffleSong,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: GestureDetector(
                        child: Material(
                          elevation: 50.0,
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: rewindBtn,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    icon: _playPause
                        ? Container(
                            height: 80,
                            width: 80,
                            child: Material(
                              elevation: 50.0,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset('assets/play.png')),
                            ),
                          )
                        : Container(
                            height: 80,
                            width: 80,
                            child: Material(
                              elevation: 50.0,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset('assets/pause.png')),
                            ),
                          ),
                    onPressed: () {
                      setState(() {
                        _playPause = !_playPause;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: GestureDetector(
                        child: Material(
                          elevation: 50.0,
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: forwardBtn,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),

                  //REPEAT
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      child: GestureDetector(
                        child: Material(
                          elevation: 50.0,
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: repeatSong,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
