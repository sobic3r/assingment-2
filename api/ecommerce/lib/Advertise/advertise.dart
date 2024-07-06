import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Adds extends StatefulWidget {
  const Adds({super.key});

  @override
  State<Adds> createState() => _AddsState();
}

class _AddsState extends State<Adds> {
  @override
  void initState() {
    super.initState();
    initerstitialAd();
  }

  late InterstitialAd interstitialAd;
  bool isAdLoad = false;

  initerstitialAd() {
    InterstitialAd.load(
        adUnitId: "ca-app-pub-3940256099942544/1033173712",
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          interstitialAd = ad;
          setState(() {
            isAdLoad = true;
            interstitialAd.show();
          });
        }, onAdFailedToLoad: ((error) {
          interstitialAd.dispose();
        })));
  }



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Google ads')
    );
  }
}