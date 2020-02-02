import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    
    return _Home();
  }
}

class _Home extends State<Home>{
  var array = ["assets/nature.jpeg","assets/01.jpg","assets/02.jpg","assets/03.jpg","assets/04.jpg","assets/05.jpg","assets/06.jpg","assets/07.jpg","assets/08.jpg","assets/09.jpg","assets/10.jpg","assets/11.jpg","assets/12.jpg"];
  static var month = ["January","Febrary","March","April","May","June","July","August","September","October","November","December"];
  
  int value=-1;

   @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      //backgroundColor: Color(#B9B9B9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text("Calender App",
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.orange
          ),),
        ),
        leading: Icon(
          Icons.calendar_today,
          
        ),
        actions: <Widget>[
          Icon(
            Icons.more_vert
          )
        ],
      ),

      
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
               Container(
                  width: MediaQuery.of(context).size.width,
                  height:260.0,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    
                    image: DecorationImage(
                      image: ExactAssetImage(array[value+1]),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                height: 400.0,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext content, int index){
                    return  InkWell(
                     onTap:(){ setState(() {
                       value = index;
                     });
                     },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                             
                              
                              color: Colors.lime
                              //image: DecorationImage(
                               // image: ExactAssetImage(array[index+1]),
                                //fit: BoxFit.fill
                              //)
                            ),
                            padding: EdgeInsets.all(10.0),
                            child: Center(child: Text(month[index],
                            softWrap: true,
                  
                            style: TextStyle(
                              fontSize: 23.0
                            ),
                            )
                            ),
                          ),
                      ),
                      
                    );
                  },
                ),
              )
            
          ],
        ),
      ),
            
      
      

    );
  }
}


