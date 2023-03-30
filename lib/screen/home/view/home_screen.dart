  import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
  import 'package:ott/screen/home/provider/home_provider.dart';
import 'package:ott/utils/shr.dart';
  import 'package:provider/provider.dart';

  class HomeScreen extends StatefulWidget {
    const HomeScreen({Key? key}) : super(key: key);

    @override
    State<HomeScreen> createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen> {
    HomeProvider? homeProvidert;
    HomeProvider? homeProviderf;
    @override
    Widget build(BuildContext context) {
      homeProvidert =Provider.of<HomeProvider>(context,listen: true);
      homeProviderf =Provider.of<HomeProvider>(context,listen: false);
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.black,title: Container(height: 40,child: Image.asset('assets/image/logopng.png'),),),
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(bottom: 20, top: 20),
                    child: CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Image.network("https://tse1.mm.bing.net/th?id=OIP.bnK0Habg4mCJMJpmshtAKwHaEK&pid=Api&P=0",
                                  fit: BoxFit.cover,),
                            ),
                            Container(height: double.infinity,width: double.infinity,color: Colors.black38,),
                            Positioned(
                              top: 90,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Taj: Divided by Blood",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                                  Text("Historical Drama",style: TextStyle(color: Colors.white70,fontSize: 20)),
                                  SizedBox(height: 10,),
                                  InkWell(
                                    onTap: () {
                                      homeProviderf!.change(1);
                                      homeProviderf!.changei(0);
                                      Navigator.pushNamed(context, 'player');
                                    },
                                    child: Container(
                                      width: 125,
                                      height: 35,
                                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.play_arrow,color: Colors.white,),
                                          Text("Wacth Now",style: TextStyle(color: Colors.white,fontSize: 18),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Image.network("https://1.bp.blogspot.com/-6v4VbJKGzb8/Xs4YMF4mNJI/AAAAAAAAMjU/fr5nC-F1kkU-HtYADApUcB_ijYzUUZAsgCLcBGAsYHQ/s1600/test_pic1586441540869.jpg",
                                fit: BoxFit.cover,),
                            ),
                            Container(height: double.infinity,width: double.infinity,color: Colors.black45,),
                            Positioned(
                              top: 90,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bhaukaal",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                                  Text("Crime Drama",style: TextStyle(color: Colors.white70,fontSize: 20)),
                                  SizedBox(height: 10,),
                                  InkWell(
                                    onTap: () {
                                      homeProviderf!.change(3);
                                      homeProviderf!.changei(2);
                                      Navigator.pushNamed(context, 'player');
                                    },
                                    child: Container(
                                      width: 125,
                                      height: 35,
                                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.play_arrow,color: Colors.white,),
                                          Text("Wacth Now",style: TextStyle(color: Colors.white,fontSize: 18),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              color: Colors.grey,
                              child: Image.network("https://www.wikibiotv.com/wp-content/uploads/2023/01/Jehanabad-of-love-and-war-web-series-cast-details.jpg",
                                  fit: BoxFit.cover),
                            ),
                            Container(height: double.infinity,width: double.infinity,color: Colors.black38,),
                            Positioned(
                              top: 80,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Jehanabad - Of Love and War",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                                  Text("Drama",style: TextStyle(color: Colors.white70,fontSize: 20)),
                                  SizedBox(height: 10,),
                                  InkWell(
                                    onTap: () {
                                      homeProviderf!.change(2);
                                      homeProviderf!.changei(1);
                                      Navigator.pushNamed(context, 'player');
                                    },
                                    child: Container(
                                      width: 125,
                                      height: 35,
                                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.play_arrow,color: Colors.white,),
                                          Text("Wacth Now",style: TextStyle(color: Colors.white,fontSize: 18),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              child: Image.network("https://tse1.mm.bing.net/th?id=OIP.OX7SZ946i_X5emb3Z6rmXgAAAA&pid=Api&P=0",
                                  fit: BoxFit.cover),
                            ),
                            Container(height: double.infinity,width: double.infinity,color: Colors.black38,),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Rangbaaz: \nDarr Ki Rajneeti",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                                  Text("Acition",style: TextStyle(color: Colors.white70,fontSize: 20)),
                                  SizedBox(height: 10,),
                                  InkWell(
                                    onTap: () {
                                      homeProviderf!.change(1);
                                      homeProviderf!.changei(3);
                                      Navigator.pushNamed(context, 'player');
                                    },
                                    child: Container(
                                      width: 125,
                                      height: 35,
                                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.play_arrow,color: Colors.white,),
                                          Text("Wacth Now",style: TextStyle(color: Colors.white,fontSize: 18),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          homeProviderf!.pagechange(index);
                        },
                          viewportFraction: 1,
                        autoPlay: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: (homeProviderf!.pageindex==0)?15:10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: (homeProviderf!.pageindex==0)?Colors.white:Colors.white24),),
                          Container(height: (homeProviderf!.pageindex==1)?15:10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: (homeProviderf!.pageindex==1)?Colors.white:Colors.white24),),
                          Container(height: (homeProviderf!.pageindex==2)?15:10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: (homeProviderf!.pageindex==2)?Colors.white:Colors.white24),),
                          Container(height: (homeProviderf!.pageindex==3)?15:10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: (homeProviderf!.pageindex==3)?Colors.white:Colors.white24),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Trending of ZEE5',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 165,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: homeProviderf!.img1.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(onTap: () {
                              homeProviderf!.change(1);
                              homeProviderf!.changei(index);
                              Navigator.pushNamed(context, 'player');
                            },child: Container(width: 110,height: 165,margin: EdgeInsets.only(right: 10),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage('${homeProviderf!.img1[index]}'),fit: BoxFit.cover)))),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Trending Sony LIV',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 165,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: homeProviderf!.img2.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(onTap: () {
                              homeProviderf!.change(2);
                              homeProviderf!.changei(index);
                              Navigator.pushNamed(context, 'player');
                            },child: Container(width: 110,height: 165,margin: EdgeInsets.only(right: 10),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage('${homeProviderf!.img2[index]}'),fit: BoxFit.cover)))),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Trending MX player',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 165,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: homeProviderf!.img3.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(onTap: () {
                              homeProviderf!.change(3);
                              homeProviderf!.changei(index);
                              Navigator.pushNamed(context, 'player');
                            },child: Container(width: 110,height: 165,margin: EdgeInsets.only(right: 10),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage('${homeProviderf!.img3[index]}'),fit: BoxFit.cover)))),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          drawer: Container(
            width: 225,
            color: Colors.black87,
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25,),
                Align(alignment: Alignment.center,child: CircleAvatar(backgroundImage: AssetImage('assets/image/IMG_20230317_180458_416.jpg'),maxRadius: 65)),
                SizedBox(height: 25,),
                Align(alignment: Alignment.center,child: Text("Ansh Raiyani",style: TextStyle(color: Colors.white,fontSize: 30),)),
                SizedBox(height: 20,),
                Container(height: 1,width: double.infinity,color: Colors.white54,),
                SizedBox(height: 30,),
                Text('Buy Plan',style: TextStyle(color: Colors.white)),
                SizedBox(height: 10,),
                Text('My Subdcription',style: TextStyle(color: Colors.white)),
                SizedBox(height: 10,),
                Text('My Transaction',style: TextStyle(color: Colors.white)),
                SizedBox(height: 10,),
                Text('My NFT',style: TextStyle(color: Colors.white)),
                SizedBox(height: 10,),
                Text('Activate TV',style: TextStyle(color: Colors.white)),
                SizedBox(height: 10,),
                Text('Setting',style: TextStyle(color: Colors.white)),
                SizedBox(height: 10,),
                Text('Invite a Friend',style: TextStyle(color: Colors.white)),
                SizedBox(height: 10,),
                Text('About Us',style: TextStyle(color: Colors.white)),
                SizedBox(height: 10,),
                Text('Help Center',style: TextStyle(color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 225),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(height: 1,width: double.infinity,color: Colors.white54,),
                      SizedBox(height: 10,),
                      InkWell(onTap: () async {
                        Shr shr = Shr();
                        Map m1=await shr.readshr();
                        shr.setshe(m1['e1'], m1['p1'], false);
                        Navigator.pushReplacementNamed(context, '/');
                      },child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Logout",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Icon(Icons.logout,color: Colors.white,)
                        ],
                      )),
                      SizedBox(height: 10,),
                      Container(height: 1,width: double.infinity,color: Colors.white54,),
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
