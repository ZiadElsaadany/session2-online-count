import 'package:flutter/material.dart';

void main( ) {

  runApp(AzkarScreen());
}
class AzkarScreen extends StatelessWidget {
   AzkarScreen({Key? key}) : super(key: key);

  List azkarText = [
   "أذكار الصباح"   // index=0
  , "أذكار المساء"   //index= 1
  , "أذكار النوم"   //index= 2
  ] ;

  List azkarImages = [
    "assets/images/sabah_image.png",
    "assets/images/msaa.png",
    "assets/images/noom.png"
  ] ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:   Scaffold(
        appBar: AppBar(

          title:Text(
            "Azkary"
          ) ,
          centerTitle: true,

        ),

        body:Directionality(
          textDirection: TextDirection.rtl,
          child: ListView.builder(
            /**

            for(int i = 0; i<list.length ; i++) {
                // list[i]
                print ("hello");
                }


             * */
            itemCount: 3,
            // 0   1
            itemBuilder: (ctx, index ) {
              // index   ==  i

              // 0
              // 1
              // 2

              /**

              List azkarText = [
                   , "أذكار الصباح"   // index=0
                   , "أذكار المساء"   //index= 1
                   , "أذكار النوم"   //index= 2
                  ] ;

              **/
              return  Container(
                padding:  EdgeInsets.symmetric(

                    vertical:10 ,
                    horizontal: 15
                ) ,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border:Border.all(
                        color: Colors.black,
                        width: 2
                    ),
                    borderRadius: BorderRadius.circular(12)
                ),

                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(azkarText[index],
                      style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900
                      ) ,),
                    Image.asset(
                     azkarImages[index],
                      height: 40,
                    )
                  ],
                ),
              );

            },


          ) ,
        ),
      ),
    );
  }
}
