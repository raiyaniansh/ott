import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:ott/screen/home/modal/home_modal.dart';
import 'package:video_player/video_player.dart';

class HomeProvider extends ChangeNotifier
{
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  int i = 0;

  int pageindex=0;

  List video1=['assets/video/TAJ.mp4','assets/video/India Lockdown.mp4','assets/video/Jaanbaaz Hindustan Ke.mp4','assets/video/Rangbaaz.mp4'];
  List img1=['https://akamaividz2.zee5.com/image/upload/w_231,h_347,c_scale,f_webp,q_auto:eco/resources/0-6-4z5311140/portrait/1920x7702288c19af62b45bca7b65d8f277922cd.jpg','https://akamaividz2.zee5.com/image/upload/w_231,h_347,c_scale,f_webp,q_auto:eco/resources/0-0-1z5250012/portrait/1920x7702e2ba8da340346f9b2256075cd4a39f2.jpg','https://akamaividz2.zee5.com/image/upload/w_231,h_347,c_scale,f_webp,q_auto:eco/resources/0-6-4z5281686/portrait/1920x7704af47d1e734948e381572ad1b52a4ecb4df6c4abb1824eac8df67df6ee440910.jpg','https://akamaividz2.zee5.com/image/upload/w_224,h_336,c_scale,f_webp,q_auto:eco/resources/0-6-4z5173774/portrait/1920x7706e8d8d70922c434c94dd09c14ccc5d5b.jpg'];
  List<mData> det1=[mData(name: 'Taj: Divided by Blood',year: '2023',cat: 'Historical Drama',ep: 10,epimg: 'https://akamaividz2.zee5.com/image/upload/w_352,h_198,c_scale,f_webp,q_auto:eco/resources/0-1-6z5311154/list/144f07141b7e44a21b0abef3a202ffc16.jpg'),mData(name: 'India Lockdown',ep: 1,cat: 'Drama',year: '2022',epimg: 'https://akamaividz2.zee5.com/image/upload/w_352,h_198,c_scale,f_webp,q_auto:eco/resources/0-0-1z5250012/list/1170x658withlogo12aabb38fe4843c8968e26b2e18a6421.jpg'),mData(name: 'Jaanbaaz Hindustan ke',ep: 8,epimg: 'https://akamaividz2.zee5.com/image/upload/w_352,h_198,c_scale,f_webp,q_auto:eco/resources/0-1-6z5281689/list/ep1v2jpgc14918156351496ea12bd88f55bc9776.jpg',cat: 'Action',year: '2023'),mData(name: 'Rangbaaz: Darr Ki Rajneeti',year: '2022',cat: 'Acition',ep: 6,epimg: 'https://akamaividz2.zee5.com/image/upload/w_352,h_198,c_scale,f_webp,q_auto:eco/resources/0-1-6z5173909/list/rangbaazs3ep014k26072022hi550c967994df4f4687266e1fce512353.jpg')];

  List video2=['assets/video/Rocket Boys.mp4','assets/video/Jehanabad.mp4','assets/video/Rocket Boys 2.mp4'];
  List img2=['https://tse3.mm.bing.net/th?id=OIP.FNSICk6XxRJ5hSYIdn9peQHaLH&pid=Api&P=0','https://tse3.mm.bing.net/th?id=OIP.pgpAWSgs5y5eo2WOAi0KuwAAAA&pid=Api&P=0','https://images.slivcdn.com/videoasset_images/rocket_boys2_22march_multilang_portrait_thumb_new_season24march.jpg?h=494&w=344&t=c_fill&q=low&fr=webp'];
  List<mData> det2=[mData(epimg: 'https://m.media-amazon.com/images/M/MV5BMzkwNzc0MjEtMjgwMy00NWYwLWJhNGUtMzhlZjg1OWQ1MDY2XkEyXkFqcGdeQXRyYW5zY29kZS13b3JrZmxvdw@@._V1_SP330,330,0,C,0,0,0_CR65,90,200,150_PIimdb-blackband-204-14,TopLeft,0,0_PIimdb-blackband-204-28,BottomLeft,0,1_CR0,0,200,150_PIimdb-bluebutton-big,BottomRight,-1,-1_ZATrailer,4,123,16,196,verdenab,8,255,255,255,1_ZAon%2520IMDb,4,1,14,196,verdenab,7,255,255,255,1_ZA02%253A44,164,1,14,36,verdenab,7,255,255,255,1_PIimdb-HDIconMiniWhite,BottomLeft,4,-2_ZALift%2520Off%2520%2528S2%252EE1%2529,24,138,14,176,arialbd,7,255,255,255,1_.jpg',year: '2022',cat: 'Drama',ep: 7,name: 'Rocket Boys'),mData(name: 'Jehanabad - Of Love and War',ep: 10,cat: 'Drama',year: '2023',epimg: 'https://images.slivcdn.com/videoasset_images/jehanabad_1_7_hin_31012023_landscape_thumb.jpg?h=398&w=708&t=c_fill&q=low&fr=webp'),mData(name: 'Rocket Boys 2',epimg: 'https://images.slivcdn.com/landscape_thumb/RocketBoys4_first_episode_1.jpg?h=398&w=708&t=c_fill&q=low&fr=webp',ep: 8,year: '2022',cat: 'Drama')];

  List video3=['assets/video/Raktanchal.mp4','assets/video/Shiksha Mandal.mp4','assets/video/Bhaukaal.mp4','assets/video/Indori Ishq.mp4'];
  List img3=['https://qqcdnpictest.mxplay.com/pic/ca7a124443044bf3c1f8ea52c8b7f9fc/en/2x3/320x480/test_pic1667472675887.webp','https://qqcdnpictest.mxplay.com/pic/8142a12325d4d9950429f45c3357a593/en/2x3/320x480/test_pic1672732330667.webp','https://qqcdnpictest.mxplay.com/pic/775ad3b682fde6a608559a60986b230d/en/2x3/320x480/test_pic1665293722662.webp','https://tse4.mm.bing.net/th?id=OIP.wICg-COrH5m4pqHQRfWdYAHaL0&pid=Api&P=0'];
  List<mData> det3=[mData(name: 'Raktanchal',cat: 'Crime Drama',year: '2020',ep: 18,epimg: 'https://qqcdnpictest.mxplay.com/pic/cabbda9ca9131dfc76011992c351fcb7/en/16x9/320x180/7bba6845608c0d8781d353ee9f762541_1920x1080.webp'),mData(name: 'Shiksha mandal',ep: 7,epimg: 'https://tse3.mm.bing.net/th?id=OIP.dKJG6j0wDG5WDUG9A9z4MgHaEK&pid=Api&P=0',year: '2022',cat: 'Thriller'),mData(name: 'Bhaukaal',cat: 'Crime Drama',year: '2020',ep: 10,epimg: 'https://qqcdnpictest.mxplay.com/pic/48c4158412e9f4aece876a7611bf84c5/en/16x9/320x180/1b6a6dfced4a19994a0a3577fba3d1d9_1920x1080.webp'),mData(name: 'Indori Ishq',year: '2022',ep: 9,cat: 'Romance',epimg: 'https://qqcdnpictest.mxplay.com/pic/e7fe9b266f35572141c3383a11b6d105/en/16x9/320x180/5b085577d605aced1cbc836867940ce7_1920x1080.webp')];

  List video=[];
  List img=[];
  List det=[];

  void changei(int index)
  {
    i=index;
    notifyListeners();
  }
  void change(int index)
  {
    if(index==1)
      {
        video=video1;
        img=img1;
        det=det1;
      }
    if(index==2)
      {
        video=video2;
        img=img2;
        det=det2;
      }
    if(index==3)
      {
        video=video3;
        img=img3;
        det=det3;
      }
  }

  void initvideo() {
    videoPlayerController = VideoPlayerController.asset('${video[i]}');
    videoPlayerController!.initialize();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController!,
      aspectRatio: 16 / 9,
      looping: false,
      autoInitialize: true,
      materialProgressColors: ChewieProgressColors(
          backgroundColor: Colors.white24,
          bufferedColor: Colors.white54,
          playedColor: Colors.white),
    );
  }

  void pagechange(int index)
  {
    pageindex=index;
    notifyListeners();
  }
}