import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/calendar_page.dart';

const dGreen = Color(0xFF54D3C2);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hotels Booking",
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchSection(), 
              HotelSection()
            ],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.5),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 20,
        ),
      ),

      title: Text(
        "Explore",
        style: GoogleFonts.nunito(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800),
      ),
      centerTitle: true,

      actions: [
        IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.favorite_outline_rounded)
        ),
        IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.place)
        ),
      ],
    );
  }
}

class SearchSection extends StatelessWidget {
  final TextEditingController searchBarApp = TextEditingController();

  SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0,3)
                      )
                    ]
                  ),
                  child: TextFormField(
                    controller: searchBarApp,
                    decoration: InputDecoration(
                      hintText: "Paris",
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none
                      )
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 10,),
              
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: dGreen,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 4)
                    )
                  ]
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage()));
                  }, 
                  icon: const Icon(Icons.search),
                  color: Colors.white,
                  iconSize: 30,
                ),
              )
            ],
          ),

          const SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choisir Date",
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "12 Dec - 22 Dec",
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
            
                Row(
                  children: [
                    Container(
                      width: 0.5,
                      height: 35,
                      color: Colors.black,
                    ),
            
                    const SizedBox(width: 20,),
            
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nombre de chambres",
                          style: GoogleFonts.nunito(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "1 chambre - 2 Adultes",
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



class HotelSection extends StatelessWidget {
  HotelSection({super.key});

  final List HotelList = [
    {
    "title": "Grand Royal Hotel",
    "place": "Wembley, London",
    "distance": 2,
    "review": 3,
    "picture": "images/hotel1.jpg",
    "price": "100",
    },
    {
    "title": "Quee Hotel",
    "place": "La defense, Paris",
    "distance": 2,
    "review": 3,
    "picture": "images/hotel2.jpg",
    "price": "100",
    },
    {
    "title": "Berlin Hotel",
    "place": "Center, Berlin",
    "distance": 2,
    "review": 3,
    "picture": "images/hotel3.jpg",
    "price": "100",
    },
    {
    "title": "Hotel Principe",
    "place": "Latina, Madrid",
    "distance": 2,
    "review": 3,
    "picture": "images/hotel4.jpg",
    "price": "100",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "550 Hotels",
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 16
                  ),
                ),

                Row(
                  children: [
                    Text(
                      "Filtres",
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 16
                      ),
                    ),
                    SizedBox(width: 10,),
                    const Icon(Icons.filter_list_outlined, size: 18, color: dGreen,)
                  ],
                )
              ],
            ),
          ),
          Column(
            children: HotelList.map((hotel) {
              return HotelCard(hotel);
            }).toList(),
          )
        ],
      ),
    );
  }
}



class HotelCard extends StatelessWidget {
  final Map hotelData;

  HotelCard(
    this.hotelData, 
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18)
              ),
            image: DecorationImage(
              image: AssetImage(hotelData["picture"]),
              fit: BoxFit.cover
            )
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(Icons.favorite_outline_rounded, color: dGreen, size: 20,),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData["title"],
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  hotelData["price"] + " €",
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: [
                      Text(
                      hotelData["place"],
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(width: 3,),

                    Icon(Icons.place, color: dGreen, size: 14,),
                    Text(
                      "A " + hotelData['distance'].toString() + "km du centre",
                      style: GoogleFonts.nunito(
                      color: Colors.grey,
                      fontSize: 8,
                    ),
                    )
                  ],
                ),

                Text(
                  "/par nuit",
                  style: GoogleFonts.nunito(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: dGreen,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dGreen,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dGreen,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: dGreen,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_border,
                      color: dGreen,
                      size: 14,
                    ),
                  ],
                ),

                SizedBox(width: 20,),

                Text(
                  hotelData['review'].toString() + " Avis",
                  style: GoogleFonts.nunito(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}