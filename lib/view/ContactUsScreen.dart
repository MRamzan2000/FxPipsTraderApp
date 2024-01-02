import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor:  Colors.blue.withOpacity(0.9),
      appBar:
    AppBar(automaticallyImplyLeading: false,  leadingWidth: width * 0.07,
        leading:Padding(
          padding:  EdgeInsets.only(left: width*0.02),
          child:  IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(  Icons.arrow_back_ios,color: Colors.white),
            ),
        ),
      title: Row(
        children: [ SvgPicture.asset('assets/cal3.svg',height: height*0.032,width:width*0.005 ),
         SizedBox(width: width*0.03,), const Text('Contact',  style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ],
      ),    backgroundColor: Colors.orange,),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*0.05,vertical: height*0.02),
        child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text('Contact Information',  style:
          TextStyle(fontSize: 18,
              color: Colors.white, fontWeight: FontWeight.bold),),
           const Divider(
            color: Colors.white,
            thickness: 3,
          ),
            SizedBox(height: height*0.01,),
          RichText(text: const TextSpan(children: [

            TextSpan(text: 'Skype:', style:
            TextStyle(fontSize: 18,
                color: Colors.indigo, fontWeight: FontWeight.bold), ),
            TextSpan(text: ' earlalex30749', style:
            TextStyle(fontSize: 17,
                color: Colors.white, fontWeight: FontWeight.bold), )

          ])),
            SizedBox(height: height*0.01,),
          RichText(text: const TextSpan(children: [

            TextSpan(text: 'Email:', style:
            TextStyle(fontSize: 18,
                color: Colors.indigo, fontWeight: FontWeight.bold), ),
            TextSpan(text: ' earlroy63@gmail.com', style:
            TextStyle(fontSize: 17,
                color: Colors.white, fontWeight: FontWeight.bold), )

          ])),

        ],),
      ),


    );
  }
}
