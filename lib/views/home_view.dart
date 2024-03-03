import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/2.jpg'),
          Expanded(
            child: Container(
              color: const Color(0xff4D556D),
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    const Text('Play and make music with',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds){
                        return const LinearGradient(colors: [Color(0xff02D5FF),Color(0xffC84CFF)]).createShader(bounds);
                      },
                      child: const Text('MusicBand',
                      style: TextStyle(
                        color: Color(0xff02D5FF),
                        fontSize: 20,
                      ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'MusicBand has everything you need to create your music. You can play and learn various instruments and connect your piano to your device.',
                        maxLines: 3,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                    ),
                      const SizedBox(height: 40,),
                      Container(
  width: 200,
  height: 60,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 160,
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.97, -0.26),
            end: Alignment(-0.97, 0.26),
            colors: [Color(0xFF13CAFF), Color(0xFFC84DFF)],
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Center(
          child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Public Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                  letterSpacing: -0.41,
                ),
              ),
        ),
      ),
    ],
  ),
)
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     fixedSize: Size(200, 60),
                    //   ),
                    //   onPressed: (){}, 
                    //   child: const Text('Get Started',
                    //   style: TextStyle(color: Colors.black),
                    //   ),),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}