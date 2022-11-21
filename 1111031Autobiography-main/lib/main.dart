import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
                                    label: 'Alarm',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
                                    label: 'Business',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: 'School',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我叫陳志樺，民國90年10月3號出生於屏東縣恆春鎮，'
      '家中有爸爸、阿嬤和弟弟，爸爸是水電工師傅，弟弟目前就讀宜蘭大學，'
      '三歲時爸媽離婚再加上爸爸在我小學之前大多都在外地工作，'
      '因此小時候都是阿公阿嬤在照顧，但阿公阿嬤要種田忙不來時就會找鄰居幫忙照顧，'
      '我就這樣從小就學會獨立，國小有一段時間家裡沒人照顧就會跟爸爸去工作，'
      '就在工地裡幫忙接線、配線、彎管及修理電器，還有在那時就學會用三用線性電表，'
      '奠定了我學電方面的基礎。';

  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("Aimer_Ash_flame.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("基本資料",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('images/me.jpg'),
            height: 270,
            width: 682,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/hc.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  final String s1='\t  小時候都在恆春長大及讀書，國小期間都維持著不錯的成績，'
      '到了國中雖難度都提升了不少，在國中還是繼續維持著不錯的成績，但英文不盡理想。\n'
      "\t  國二期間學校有開機器人社，我就跟朋友一起參加，在裡面一開始學了麵包板怎麼配線，接著學簡單的程式，"
      "之後才正式開始學著控制機器車，像尋線車、超音波感測倒車雷達、躲避障礙物、讓機器車發出警示聲響及警示燈。\n"
      "\t  國二下、國三期間輔導課都會做職涯探索與科系介紹，好讓我們選擇為來的出路，"
      "但國中做的科系介紹我覺得不太完整，所以我就去問過在相關科系的人士及爸爸對其他科系的看法，"
      "在國三時確定了之後要走電子電機方面的領域，而且升高中、職的志願選填我是選系不選校，最後來到了岡山農工電子科。\n"
      "\t  上了高職有別於高中多了專業科目與實習課，實習課一開始就上程式設計C語言，"
      "雖然和國中的程式方塊不一樣，但是用的敘述邏輯並沒有太多的不同，所以對於學習C語言沒有太大的負擔。";
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("Aimer_DAWN.mp3"));
    return SingleChildScrollView(
      child: Column(
          children:<Widget>[
      //先放個標題
      Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Text("學習歷程",
          style: TextStyle(fontSize:24,
            fontWeight:FontWeight.bold,)),
      ),
    //文字自傳部份
      Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
      decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 3),
      borderRadius: BorderRadius.circular(8),
      boxShadow: [ BoxShadow(color: Colors.lightBlueAccent,
      offset: Offset(6, 6)),
      ],),
      child:Text(s1,
      style: TextStyle(fontSize: 20),),
      ),

    //放一張照片
      Container(
      color: Colors.teal,
      child: Image.asset('images/hsh1.jpg'),
      height: 270,
      width: 682,
      ),
      SizedBox(height: 30,),
    ],),);
  }

}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //player.play(AssetSource("Aimer_ Refar.mp3"));
    player.play(AssetSource("Aimer_DAWN.mp3"));
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height:100,
                    width: 200,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 學好英文'),
                      Text('2. 組合語言'),
                      Text('3. 電路學'),
                      Text('4. 微積分'),
                    ],
                  ),
                ),
              ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期"),],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Container(
            height: 100,
            width: 200,
            child: ListView(
              children: [
                //條列式參考
                Text('1. 工程數學'),
                Text('2. 資料結構'),
                Text('3. 電子學'),
                Text('4. 微處理機'),
                 ],
               ),
             ),
           ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大三時期"),],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 自動控制'),
                    Text('2. 電力電子'),
                    Text('3. 機器學習'),
                    Text('4. 電力系統'),
                    Text('5. 電磁學'),
                    Text('6. 專題'),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大四時期"),],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 數值分析'),
                    Text('2. 電動車'),
                    Text('3. 固態馬達'),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  /*
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('專案方向'),);
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SfPdfViewer.asset(
            'assets/mew.pdf'));
  }
}
