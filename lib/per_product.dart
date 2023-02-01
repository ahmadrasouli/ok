import 'package:flutter/material.dart';
import 'products.dart';
class per_product extends StatelessWidget {
  Products _product;
  per_product (this._product);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network("https://dkstatics-public.digikala.com/digikala-adservice-banners/f172bce36d2f484a57a7f570bbceea72ae489db7_1674045844.jpg?x-oss-process=image/quality,q_95",fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
