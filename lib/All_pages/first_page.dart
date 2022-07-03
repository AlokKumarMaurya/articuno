import 'dart:math';
import 'package:flutter/material.dart';

class Articuno extends StatefulWidget {
  const Articuno({Key? key}) : super(key: key);

  @override
  State<Articuno> createState() => _ArticunoState();
}

class _ArticunoState extends State<Articuno> {





  //declared variable to hold text for container and color of container ,which make us easy to change them
  //on butoon pressed by setState() method
  var Text_1 = "Box : 1";
  var Text_2 = "Box : 2";
  var Storing_Color_1 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  var Storing_Color_2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      //making appbar
      appBar: AppBar(
        title: Text("Articuno"),                                      //appbar title
        centerTitle: true,                                          //making title center
        backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],         //making background color random for appbar
     actions: [
       IconButton(onPressed: ()                                                               //adding a button to the appbar
       {
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(                                  //makaing its on pressed function to show snackbar
             duration: Duration(milliseconds: 200),
             content: ScaffoldMessenger(

               child: Text("Sorry this feature is yet not avialabe"),                             //tetx to be shon in snackbar

             )
         )
         );

       },
         icon: Icon(Icons.person)                                                      //icon of the button

         ,),
     ],



      ),
      drawer: Drawer(                                                            //making a simple drawer
        width: MediaQuery.of(context).size.width/2,                              //giving width to the drawe
        child: Center(child: Text("Nothing to show as of now")),                  //text in the drawer
      ),
      body: Column(                                                              //making app body
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,                   // giving space between the container
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                color: Storing_Color_1,
                width: MediaQuery.of(context).size.width / 3,                     //giving width to the container
                height: 200,
                child: Center(
                    child: Text(
                  Text_1,                                              //text to be shown in container which chnage on swap
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.primaries[                         //giving random color to the container
                          Random().nextInt(Colors.primaries.length)]),
                )),
              ),
              Container(
                  child: Center(
                      child: Text(
                    Text_2,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)]),
                  )),
                  width: MediaQuery.of(context).size.width / 3,
                  height: 200,
                  color: Storing_Color_2)
            ],
          ),
          ElevatedButton(                                                   //making an elevated button that swap the container
              onPressed: () {
                if (Text_1 == "Box : 1") {
                  setState(() {
                    Text_1 = "Box : 2";
                    Text_2 = "Box : 1";
                  });
                } else if (Text_1 == "Box : 2") {
                  setState(() {
                    Text_1 = "Box : 1";
                    Text_2 = "Box : 2";
                  });
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(                //giving a message each time the button tapped
                  duration: Duration(milliseconds: 200),
                    content: ScaffoldMessenger(

                  child: Text("Containers have been swapped"),

                )
                )
                );
              },
              child: Text("Swapp Container")),


          ElevatedButton(onPressed: ()                                         //button to chnage the color of the container
          {
           setState(()
           {
             Storing_Color_2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
             Storing_Color_1 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
           }
           );


          },



              child: Text("Change Container Color"))
        ],
      ),
      
      
      floatingActionButton: FloatingActionButton(onPressed:()                      //just adding a floating button
        {

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: Duration(milliseconds: 200),
              content: ScaffoldMessenger(

                child: Text("Sorry this feature is yet not avialabe"),

              )
          )
          );
        }

        ,child: Icon(Icons.face),),

      bottomNavigationBar:BottomAppBar(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Made with ❤️ by alok"),
        ],
      ),)
      
      
    );
  }


}
