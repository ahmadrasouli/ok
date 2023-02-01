import 'package:flutter/material.dart';
import 'Home.dart';

class forgetpass extends StatelessWidget {
  const forgetpass({Key? key}) : super(key: key);

  get prefixIcon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(

                padding: EdgeInsets.fromLTRB(35, 12, 35, 0),
                child:
                TextField(

                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(

                    prefixIcon: prefixIcon??Icon(Icons.account_circle,color: Color(
                        0xffb1b9c0),),
                    hintText: 'کد پرسنلی',
                    hintStyle: TextStyle(fontSize: 14, fontFamily: 'Iry',fontWeight: FontWeight.bold, color: Colors.grey),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xffedf2f3),
                    contentPadding: EdgeInsets.all(16),

                  ),
                )


            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));

              },
              child: Container(

                child:Center(
                    child: const Text("بازیابی رمزعبور",style: TextStyle(fontFamily: 'Iry' ,fontSize: 18 ,fontWeight: FontWeight.bold , color: Colors.white),)
                ),
                height: 60,
                width: 330,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,



                ),

              ),
            ),
          ],
        )
      ),
    );
  }
}
