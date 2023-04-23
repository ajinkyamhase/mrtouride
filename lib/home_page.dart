
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context)
        .size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height*.45,
            decoration: const BoxDecoration(

              image:DecorationImage(
                //alignment: Alignment.center,
                  image: AssetImage("assets/image/homebg.png"),
                  fit: BoxFit.fitHeight
              ) ,
            ),
          ),
          SafeArea(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment:Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 92,
                  color: Colors.black,
                  // decoration: BoxDecoration(
                  //   color: Colors.yellow,
                  //    shape:BoxShape.circle,
                  //  ),
                  child: SvgPicture.asset("assets/image/bell.svg"),
                ),
              ),
              const Text(
                "Hello Sushant,",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Where would you like to go?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                  ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29.5),
                ),
                child: TextField(

                  decoration: InputDecoration(
                    hintText: "Search",
                    icon: SvgPicture.asset("assets/image/search.svg"),
                    border: InputBorder.none,

                  ),
                ),
              ),
              Expanded(child: GridView.count(
                crossAxisCount: 4,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                      image:const DecorationImage(
                        //alignment: Alignment.center,
                          image: AssetImage("assets/image/jaipur.png"),
                          fit: BoxFit.fitHeight
                      ) ,
              ),
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset("assets/image/location.svg"),
                        const Text("Jaipur"),
                      ],
                    ),

              ),
              ],
              ),
              ),
            ],
          ),
          ),
          ),
        ],
      ),
    );
  }
}