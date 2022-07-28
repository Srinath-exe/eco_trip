import 'package:flutter/material.dart';

class AboutBox extends StatefulWidget {
  Function onExpandPressed;
  String title;
  String content;
   AboutBox({ Key? key,required this.content,required this.onExpandPressed,required this.title, }) : super(key: key);

  @override
  State<AboutBox> createState() => _AboutBoxState();
}

class _AboutBoxState extends State<AboutBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Aboiut Karnataka EcTourism"),
          Row(
            children: [
              Container(
                child: Text(
                  "text for the content"
                  //TODO:text sttyle for the this body 1
                ),
              ),
              Container(
                child: IconButton(
                  onPressed: (){
                    //ToDO: on pressed for about page



                  },
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
              )
            ],
          ),

        ],
      ),
      
    );
  }
}