import 'package:flutter/material.dart';
import 'package:piano_app/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    goToNextView();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Image.asset('assets/images/1.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      ),
    );
  }
  
  void goToNextView() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return const HomeView();
      }));
    });
  }
}