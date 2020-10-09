import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

const String testDevice = '';

class TestAdmob extends StatefulWidget {

  @override
  _TestAdmobState createState() => _TestAdmobState();
}

class _TestAdmobState extends State<TestAdmob> {

  static final MobileAdTargetingInfo targetInfo = new MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Game','PUBG'],
    childDirected: true,
  );

  BannerAd bannerAd;
  InterstitialAd interstitialAd;

  BannerAd createBannerAd(){
    return new BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.banner,
      targetingInfo: targetInfo,
      listener: (MobileAdEvent event){
        print("Banner Event : $event");
      }
    );
  }
  InterstitialAd createInterstitialAd(){
    return new InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: targetInfo,
      listener: (MobileAdEvent event){
        print("Interstitial Event : $event");
      }
    );
  }

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(
      appId: BannerAd.testAdUnitId
    );
    bannerAd = createBannerAd()..load()..show();
    super.initState();
  }
  @override
  void dispose() {
    bannerAd.dispose();
    interstitialAd.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: Text("Test Admob"),
       ),
       body: Center(
         child: GestureDetector(
           onTap: (){
             createInterstitialAd()..load()..show();
           },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 54),
              child: Text("Kembali Ke Beranda", style: TextStyle(
                fontSize: 15,
                color: Colors.purpleAccent
              ),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.purpleAccent, width: 2),
                color: Colors.white
              ),
            ),
         )
       ),
    );
  }
}