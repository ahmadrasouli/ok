import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'Products.dart';
import 'per_product.dart';
import 'selector.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const title_style2 = TextStyle(
      color: Colors.grey,
      fontSize: 14,
      fontWeight: FontWeight.w900,
      fontFamily: 'Iry');
  static const title_style4 = TextStyle(
      color: Colors.blue,
      fontSize: 11,
      fontWeight: FontWeight.bold,
      fontFamily: 'Iry');

  static const title_style = TextStyle(
      color: Colors.blue,
      fontSize: 15,
      fontWeight: FontWeight.w800,
      fontFamily: 'Iry');
  static const input_title = TextStyle(
      color: Colors.blue,
      fontSize: 12,

      fontFamily: 'Iry',
     fontWeight: FontWeight.bold
  );
  static const hint_text =
  TextStyle(color: Colors.black45, fontSize: 14, fontFamily: 'Iry');


  int _selectedIndex = 1 ;
  final List <Products> _items =[
    Products("1", "غلات صبحانه چی تور", "80.000", "https://dkstatics-public.digikala.com/digikala-products/1cd2beecf3f126a5103f1c047349171ad5cfc051_1627997078.jpg", "توضیحات محصول1"),
    Products("2", "شکلات صبحانه", "700.000", "https://dkstatics-public.digikala.com/digikala-products/17e36cae76ff9803a0981d1ef4291304ed9b7b2b_1654692593.jpg", "توضیحات محصول2"),
    Products("3", "شکلات صبحانه فرمند", "850.000", "https://dkstatics-public.digikala.com/digikala-products/d0181cf23d7b25a0d1b71204167651ba30b1d40f_1595410151.jpg", "توضیحات محصول3"),
    Products("4", "عسل کندو", "1.200.000", "https://dkstatics-public.digikala.com/digikala-products/3284299.jpg", "توضیحات محصول4"),


  ];


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa', ''), // persian

      ],
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "احمد رسولی",
            style: title_style2,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 2,
          actions: <Widget>[
            IconButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => selector()));
            },
                icon: Icon(Icons.arrow_back,color: Colors.black38,))
          ],
        ),
        body: MainUi(),
        backgroundColor: Color(0xfff7fafc),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 20,
          selectedFontSize: 12,
          selectedIconTheme: IconThemeData(color: Colors.blueAccent,size: 20),
          selectedItemColor: Colors.blueAccent,
          selectedLabelStyle: input_title ,
          unselectedIconTheme: IconThemeData(color: Colors.black12,size: 20,),
          unselectedLabelStyle: TextStyle(fontFamily: "Iry",fontWeight: FontWeight.bold,fontSize: 12,),


          items:
          <BottomNavigationBarItem>[

            BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: 'تنظیمات',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'صفحه اصلی',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),
              label: 'سبد خرید',
            ),

          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,

        ),
      ),
    );
  }
  Widget MainUi (){
    return Builder(builder: (context){
      return  SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child: Column(
          children: <Widget>[
            ImageSlideshow(

              width: double.infinity,
              height: 150,
              initialPage: 0,
              indicatorColor: Colors.blueAccent,
              indicatorBackgroundColor: Colors.white60,

              children: [
                Image.asset('s1.jpg',fit:BoxFit.fill),
                Image.asset('s2.jpg',fit:BoxFit.fill),
                Image.asset('s3.jpg',fit:BoxFit.fill),
                Image.asset('s4.jpg',fit:BoxFit.fill),


              ],
              autoPlayInterval: 6000,
              isLoop: true,

            ),
            SizedBox(height:10 ,),
            InkWell(
              onTap: ()
              {


              },
              child: Container(
                height: 60,
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('پرفروش ترین محصولات' , style: title_style,),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text('نمایش همه' , style: title_style4,),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 28,color: Colors.black26,),
                        ],
                      ),
                    )


                  ],
                ),

              ),
            ),//بخش پرفروش
            Container(
              decoration: BoxDecoration(

                  boxShadow:[BoxShadow(
                      color: Color(0xffecf3f3),
                      spreadRadius: 1,
                      blurRadius: 15

                  )

                  ]
              ),
              height: 250,
              //color: Colors.white54,
              child:Padding(
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(_items.length, (int position)
                  {

                    return generateItems(_items[position] , context);

                  }
                  ),

                ),
              ),

            ),//بخش محصولات پرفروش
            SizedBox(height:5 ,),
            InkWell(
              onTap: ()
              {


              },
              child: Container(
                height: 60,
                margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('جدیدترین محصولات' , style: title_style,),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text('نمایش همه' , style: title_style4,),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 28,color: Colors.black26,),
                        ],
                      ),
                    )

                  ],
                ),

              ),
            ),//بخش جدیدترین
            Container(
decoration: BoxDecoration(

  boxShadow:[BoxShadow(
    color: Color(0xffecf3f3),
    spreadRadius: 1,
    blurRadius: 15

  )

  ]
),
              height: 250,
              //color: Colors.white54,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child:Padding(
                padding: EdgeInsets.all(10),

                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(_items.length, (int position)
                  {

                    return generateItems(_items[position] , context);

                  }
                  ),

                ),
              ),

            ),//بخش محصولات جدیدترین
            SizedBox(height:10 ,),
            Container(
              height: 120,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: InkWell(
                onTap: (){},
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(18)),

                  child: Image.network("https://dkstatics-public.digikala.com/digikala-adservice-banners/f172bce36d2f484a57a7f570bbceea72ae489db7_1674045844.jpg?x-oss-process=image/quality,q_95",fit: BoxFit.cover,),


                ),
              ),
            ),//بنر1
            SizedBox(height:10 ,),
            Container(
                height: 120,
                width: double.infinity,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(

                      height: 120,
                      width: MediaQuery.of(context).size.width/2-15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),

                        child: Image.network("https://dkstatics-public.digikala.com/digikala-adservice-banners/441ae6a82d2925247f9a81efeb3db40d0b35194e_1674042055.jpg?x-oss-process=image/quality,q_95",fit: BoxFit.cover,),


                      ),

                    ),
                    SizedBox(width:10 ,),
                    Container(

                      height: 120,
                      width: MediaQuery.of(context).size.width/2-15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),

                        child: Image.network("https://dkstatics-public.digikala.com/digikala-adservice-banners/491ee34d1dda0531b6f532c0d853441615efacb4_1674385592.jpg?x-oss-process=image/quality,q_95",fit: BoxFit.cover,),


                      ),

                    ),
                  ],


                )
            ),//بنر 2 و 3
            SizedBox(height:10 ,),


          ],
        ),
      );

    }


    );

  }



  void _onItemTapped(int index){

    setState(() {
      _selectedIndex=index;
    });

  }
}
Widget generateItems (Products products , BuildContext context){

  return Container(
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,

    ),
    child: InkWell(
      onTap: (){
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => per_product()));
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: Colors.redAccent,

                    ),

                    child: Center(child: Text('20%',style: TextStyle(fontFamily: 'Iry',fontWeight: FontWeight.w900,fontSize: 15 , color: Colors.white))),
                  ),
                  Container(
                    width: 150,
                    height: 140,
                    child: Image.network(products.image , ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: 185,
              height: 30,
              child: Text(products.name,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.black , fontFamily: 'Iry' , fontSize: 13, fontWeight: FontWeight.bold) ,

              ),
            ),
            SizedBox(height: 3,),
            Divider(
              height: 1,
              color: Color(0xffe8ebed),
              thickness: 1,
              endIndent: 40,
              indent: 40,

            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text(products.price,style: TextStyle(fontFamily: "Iry",color: Colors.black , fontSize: 14, fontWeight: FontWeight.bold),),
                  Text("تومان",style: TextStyle(fontFamily: "Iry",color: Colors.grey , fontSize: 12),),

                ],

              ),


            )

          ],

        ),

      ),


    ),


  );
}




