import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ManualScreen extends StatelessWidget {
    ManualScreen({super.key});
List heading =['TRADE PAIR','PRICE','ENTRY IN CALC'];
  List tradePairs=['EURUSD','GBPUSD','AUDUSD','USDCAD','EURAUD','EURGBP','GBPJPY','USDJPY','EURJPY','AUDJPY','GOLD','OIL','USDCHF',];

  List price=['1.1234','1.3654','0.7542 ','1.3488','1.4222','0.8520 ','140.380','112.910','119.630','84.080 ','1186.970','44.670','1.01458',];

  List entryInCell=['11234','13654','7542','13488','14222','8520','14038 ','11291','11963','8408','11869','4467','10145'];

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(resizeToAvoidBottomInset: true,
      appBar:
      AppBar(automaticallyImplyLeading: false,  leadingWidth: width * 0.07,
        leading:Padding(
          padding:  EdgeInsets.only(left: width*0.02),
          child:  IconButton(onPressed: (){Navigator.pop(context);},
             icon:const Icon( Icons.arrow_back_ios,color: Colors.white)),
        ),
        title: Row(
          children: [ SvgPicture.asset('assets/cal3.svg',height: height*0.032,width:width*0.005 ),
            SizedBox(width: width*0.03,), const Text('Manual Details',  style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        ),    backgroundColor: Colors.orange,),body:  Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.02),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const  Align(alignment: Alignment.topCenter,
                child:  Text('Fxpipstrader Manual',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
            SizedBox(height: height*0.02,),
            const  Align(alignment: Alignment.topCenter,
              child:  Text('*Do not enter Decimal Points  ',style: TextStyle(color: Colors.red,
                  fontSize: 16,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: height*0.02,),
            const Text('1. Enter the Forex Pair',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
            const Text('2. Enter the NY Close Price',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
            const  Text('3. Press the Calculate Button',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
            SizedBox(height: height*0.025,),
            const Text('Use the price levels shown as a guide to trade the market each day.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
            SizedBox(height: height*0.025,),
            const Text('NY MARKET PRICE FOR ENTRY IN THE FOREX RANGE CALCULATOR EXAMPLES',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
            SizedBox(height: height*0.025,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(heading[0],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Text(heading[1],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),Text(heading[2],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold))],),

            ListView.builder(shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),padding: EdgeInsets.symmetric(horizontal: width*0.03),
              itemCount: price.length,
              itemBuilder: (context, index) {
              return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
SizedBox(width: width/3,child: Row(mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Text(tradePairs[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
  ],
),),
                  SizedBox(width:width/3.5 ,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(price[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      ],
                    ),),
                  SizedBox(width: width/4,child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(entryInCell[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    ],
                  ),),

              ],);
            },),
            SizedBox(height: height*0.025,),
            const Text('RECALCULATE AT THE END OF EACH FOREX DAY.',style: TextStyle(fontSize: 12,),),
            const Text('ALL PRICE LEVELS SHOWN ARE CONSIDERED TO BE BROKEN IF PASSED BY 14 PIPS',style: TextStyle(fontSize: 12,)),





          ]),
        ),);
  }
}
