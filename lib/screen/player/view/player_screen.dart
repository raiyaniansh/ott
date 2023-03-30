import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:ott/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).initvideo();
  }
  HomeProvider? playerProviderf;
  HomeProvider? playerProvidert;

  @override
  Widget build(BuildContext context) {
    playerProviderf = Provider.of<HomeProvider>(context, listen: false);
    playerProvidert = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context);
                },icon: Icon(Icons.arrow_back_ios,color: Colors.white)),
                SizedBox(width: 10,),
                Container(height: 40,child: Image.asset('assets/image/logopng.png'),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 195,
              width: double.infinity,
              child: Chewie(
                controller: playerProviderf!.chewieController!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${playerProviderf!.det[playerProviderf!.i].name}",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 8,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("${playerProviderf!.det[playerProviderf!.i].ep} Episodes",style: TextStyle(color: Colors.white70,fontSize: 18),),
                        SizedBox(width: 5,),
                        Container(height: 8,width: 8,decoration: BoxDecoration(color: Colors.white70,shape: BoxShape.circle),),
                        SizedBox(width: 5,),
                        Text("${playerProviderf!.det[playerProviderf!.i].year}",style: TextStyle(color: Colors.white70,fontSize: 18),),
                        SizedBox(width: 5,),
                        Container(height: 8,width: 8,decoration: BoxDecoration(color: Colors.white70,shape: BoxShape.circle),),
                        SizedBox(width: 5,),
                        Text("${playerProviderf!.det[playerProviderf!.i].cat}",style: TextStyle(color: Colors.white70,fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.share,color: Colors.white,),
                            SizedBox(height: 5,),
                            Text("Share",style: TextStyle(color: Colors.white70)),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Icon(Icons.play_circle,color: Colors.white,),
                            SizedBox(height: 5,),
                            Text("Watch Promo",style: TextStyle(color: Colors.white70)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text(
                      'Episodes 1 - ${playerProviderf!.det[playerProviderf!.i].ep}',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 98,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: playerProviderf!.det[playerProviderf!.i].ep,
                        itemBuilder: (context, index) {
                          return Container(margin: EdgeInsets.only(right: 10),child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network('${playerProviderf!.det[playerProviderf!.i].epimg}',width: 175,fit: BoxFit.cover,)));
                        },
                      ),
                    ),

                    SizedBox(height: 20,),
                    Text(
                      'More',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 165,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: playerProviderf!.img.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(onTap: () {
                                playerProviderf!.changei(index);
                                Navigator.pushReplacementNamed(context, 'player');
                              },child: Container(width: 110,height: 165,margin: EdgeInsets.only(right: 10),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage('${playerProviderf!.img[index]}'),fit: BoxFit.cover)))),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
