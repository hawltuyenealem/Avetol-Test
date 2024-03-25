import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            homePage(),
            Container(
              decoration:BoxDecoration(
                gradient: LinearGradient(
                    colors:[
                      Colors.grey.shade800,
                      Colors.black,
                      Colors.black,
                    ],
                  begin: Alignment.topCenter,
                  end: Alignment.center
                ),

              ),
              child: Column(
                children: [
                  continueWatching(),
                  trending(),
                  original(),
                  advertisement(),
                  avetolShows(),
                  avetolLiveShow(),
                  exclusives(),
                  categories(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget homePage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: ImageSlideshow(
          height: MediaQuery.of(context).size.height * 0.8,
          autoPlayInterval: null,
          initialPage: 0,
          disableUserScrolling: true,
          indicatorRadius: 4,
          onPageChanged: (value){},
          indicatorColor: Colors.white,
          indicatorBackgroundColor: const Color.fromRGBO(217, 217, 217, 0.36,),
          children: [
            firstPage(),
            Container(child: const Center(child: Text("test"),),),
            Container(),
            Container(),
            Container(),
          ]),
    );
  }

  Widget firstPage() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Home Cover.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 25,),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                  child: Image.asset(
                    "assets/images/Logo_white 1.png",
                    height: 60,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 180,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 50),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 10),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(38.0)),
                          ),
                          backgroundColor: const Color.fromRGBO(3, 156, 242, 1),
                        ),
                        child: Text(
                          "Watch Now",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(
                          222,
                          222,
                          222,
                          0.62,
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget continueWatching() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Continue Watching",
            style: GoogleFonts.inter(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          const SizedBox(height: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 162,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: ClipRRect( borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/continue1.png",fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 20.0),
                      child: Text(
                        "Man",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 162,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: ClipRRect( borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/continue1.png",fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 20.0),
                      child: Text(
                        "Creed 3",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget trending() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Trending",
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const SizedBox(height: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 162,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/trending1.png",fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 20.0),
                      child: Text(
                        "Sweetness in the beely",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 162,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/trending1.png",fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 20.0),
                      child: Text(
                        "Kemis Yelebsk",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),

                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget original() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image.asset("assets/images/logo_sml 1.png"),
                    Text(
                      "Originals",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: (){}, child: Text(
                "View all",style: GoogleFonts.inter(
                color:Color.fromRGBO(11, 132, 255, 1),
                fontSize :18,
                fontWeight: FontWeight.w500
              ),
              ))
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: const BoxDecoration(
                        color: Colors.transparent
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/images/original1.png",fit: BoxFit.cover))),
                Container(
                    padding: const EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: const BoxDecoration(
                      color: Colors.transparent
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/images/original1.png",fit: BoxFit.cover,))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget advertisement() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      child: Image.asset("assets/images/advertisement.png",fit: BoxFit.cover,),
    );
  }

  Widget avetolShows() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Avetol Shows",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight:FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 162,
                      decoration: const BoxDecoration(
                        color: Colors.transparent
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/images/avetol_shows1.png",fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 16.0),
                      child: Text(
                        "#Time with Danayit",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 162,
                      decoration: const BoxDecoration(
                          color: Colors.transparent
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/images/avetol_shows1.png",fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 16.0),
                      child: Text(
                        "Derib Show",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget avetolLiveShow() {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 5,bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Avetol Live Channels",
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.white,
                  ))
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: 162,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(250, 185, 85, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Image.asset("assets/images/live1.png"),
                  ),
                ),
                const SizedBox(width: 15,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  padding: const EdgeInsets.all(20),
                  height: 162,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(250, 185, 85, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Image.asset("assets/images/live1.png"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget exclusives() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Exclusives",
              style: GoogleFonts.inter(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(height: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.82,
                      decoration: const BoxDecoration(
                          color: Colors.transparent
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/exclusive1.png",fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                      child: Text(
                        "Weraj",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.82,
                      decoration: const BoxDecoration(
                          color: Colors.transparent
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/exclusive1.png",fit: BoxFit.cover,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                      child: Text(
                        "Concert",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0,left: 16.0,bottom: 40,top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Categories",
              style: GoogleFonts.inter(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(height: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 130,
                  decoration: BoxDecoration(
                      color:const Color.fromRGBO(8, 59, 242, 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spacer(),
                        Image.asset("assets/images/logo.png"),
                        Text(
                          "Comedy",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 130,
                  decoration: BoxDecoration(
                      color:const Color.fromRGBO(8, 59, 242, 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spacer(),
                        Image.asset("assets/images/logo.png"),
                        Text(
                          "Drama",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
