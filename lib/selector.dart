import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'Home.dart';
import 'forgetpass.dart';

void main (){
  runApp(selector());
}


class selector extends StatefulWidget {
   selector({Key? key}) : super(key: key);

  static const input_title = TextStyle(
      color: Colors.blueAccent,
      fontSize: 16,
      fontWeight: FontWeight.w800,
      fontFamily: 'Iry');

  static const title_style = TextStyle(
    fontFamily: 'Iry',
    color: Colors.blueAccent,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  @override
  State<selector> createState() => _selectorState();
}

class _selectorState extends State<selector> {
  get prefixIcon => null;

  get checkedValue => null;

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {



    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Builder(
          builder: (context) {
            return Container(

                      decoration: BoxDecoration(
                          image: DecorationImage(
                          image: AssetImage("assets/bg.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
              child: Scaffold(

                backgroundColor: Color(0xfff7fafc),
                body: SingleChildScrollView(

                  child: Center(

                    child: Column(

                      children: <Widget>[
                //
                        const SizedBox(
                          height: 80,
                        ),

                        const SizedBox(
                          height: 40,
                        ),
                        Image.asset(
                          "ok.png",
                          height: 50,
                          width: 50,
                        ),
                        Text(' نرم افزار جامع ',style: TextStyle(fontFamily: 'Iry' ,fontSize: 10 ,fontWeight: FontWeight.bold , color: Color(
                            0xff7a7c7e),)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('1.6.1-82 ',style: TextStyle(fontFamily: 'Iry' ,fontSize: 10 ,fontWeight: FontWeight.bold , color: Color(
                            0xff9c9fa1),)),

                      const SizedBox(
                          height: 100,
                        ),
                        Padding(

                          padding: EdgeInsets.fromLTRB(35, 12, 35, 0),
                          child:
                          TextField(

                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(

                              prefixIcon: prefixIcon??Icon(Icons.account_circle,color: Color(
                                  0xffb1b9c0),),
                              hintText: 'نام کاربری',
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
                        const SizedBox(
                            height: 20),
                        Padding(

                          padding: EdgeInsets.fromLTRB(35, 12, 35, 0),
                          child:
                          TextField(
                            obscureText: true,
                            textAlign: TextAlign.right,

                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                               prefixIcon: prefixIcon??Icon(Icons.lock,color: Color(0xffb1b9c0),),
                              hintText: 'رمز عبور',
                              hintStyle: TextStyle(fontSize: 14, fontFamily: 'Iry',fontWeight: FontWeight.bold,color: Colors.grey),

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

                        const SizedBox(
                          height: 100),

                        InkWell(
                          onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));

                          },
                          child: Container(

                            child:Center(
                                child: const Text("ورود",style: TextStyle(fontFamily: 'Iry' ,fontSize: 18 ,fontWeight: FontWeight.bold , color: Colors.white),)
                            ),
                            height: 60,
                            width: 330,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.redAccent,



                            ),

                          ),
                        ),
                        const SizedBox(
                            height: 30),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgetpass()));

                          },
                          child: Text('فراموشی رمز عبور',textAlign: TextAlign.right,style: TextStyle(fontFamily: 'Iry' ,fontSize: 12 ,fontWeight: FontWeight.bold , color: Color(
                              0xff7a7c7e),)),

                        ),

                        const SizedBox(
                            height: 30),
                       Row(

                          children: [
                            const SizedBox(
                                width: 150),
                            Text(' مرا به یاد بیاور ',style: TextStyle(fontFamily: 'Iry' ,fontSize: 10 ,fontWeight: FontWeight.bold , color: Color(
                                0xff7a7c7e),)),

                            Checkbox(
                                activeColor: Colors.grey,
                                value: isChecked,
                                onChanged:(newBool){
                                  setstate(){
                                    isChecked=newBool;
                                  }
                                }
                            )
                          ],
                        )





                      ],
                    ),
                  ),
                ),

              ),
            );
          }
      ),
    );
  }
}
