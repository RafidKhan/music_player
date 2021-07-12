import 'package:explore_music/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  String songTitle = "Track";
  String songName;

  ScrollController bottomSheet = new ScrollController();

  List<String> trackName = [
    "Track 1",
    "Track 2",
    "Track 3",
    "Track 4",
    "Track 5",
    "Track 6",
    "Track 7",
    "Track 8",
    "Track 9",
    "Track 10",
    "Track 11",
    "Track 12",
    "Track 13",
    "Track 14",
    "Track 15",
    "Track 16",
    "Track 17",
    "Track 18",
    "Track 19",
    "Track 20"
  ];

  List<String> trackDuration = [
    "5:00",
    "4:13",
    "7:06",
    "6:00",
    "8:30",
    "14:20",
    "5:40",
    "5:00",
    "4:13",
    "7:06",
    "6:00",
    "8:30",
    "14:20",
    "5:40",
    "5:00",
    "4:13",
    "7:06",
    "6:00",
    "8:30",
    "14:20"
  ];

  List<Image> albumArt = [
    Image.asset('assets/art1.jpg'),
    Image.asset('assets/art2.jpg'),
    Image.asset('assets/art3.jpg'),
    Image.asset('assets/art4.jpg'),
    Image.asset('assets/art5.jpg'),
    Image.asset('assets/art6.jpg'),
    Image.asset('assets/art7.jpg'),
    Image.asset('assets/art8.jpg'),
    Image.asset('assets/art9.jpg'),
    Image.asset('assets/art10.jpg'),
    Image.asset('assets/art11.jpg'),
    Image.asset('assets/art12.jpg'),
    Image.asset('assets/art13.jpg'),
    Image.asset('assets/art14.jpg'),
    Image.asset('assets/art15.jpg'),
    Image.asset('assets/art16.jpg'),
    Image.asset('assets/art17.jpg'),
    Image.asset('assets/art18.jpg'),
    Image.asset('assets/art19.jpg'),
    Image.asset('assets/art20.jpg'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey[200], Colors.grey[300]],
          ),
        ),
        child: SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Music Playlist",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            color: Colors.black87),
                      ),
                    ),
                  ),

                  ////ListOfSong
                  Expanded(
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (builder) {
                                      return BottomSheetWidget(
                                        trackName: trackName[index],
                                        albumArt: albumArt[index],
                                        trackDuration: trackDuration[index],
                                      );
                                    });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.blueGrey[500],
                                      Colors.blueGrey[200]
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.music_note_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: FittedBox(
                                          child: Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: albumArt[index],
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 180,
                                            child: Text(
                                              trackName[index],
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 180,
                                            child: Text(
                                              trackDuration[index],
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black54),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
