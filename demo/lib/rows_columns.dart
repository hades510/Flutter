 
/*Container(
        color:const Color.fromARGB(183, 26, 187, 189),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          //1st column
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('A', style: TextStyle(fontSize: 25),),
                  Text('B', style: TextStyle(fontSize: 25),),
                  Text('C', style: TextStyle(fontSize: 25),),
                  Text('D', style: TextStyle(fontSize: 25),),
                  Text('E', style: TextStyle(fontSize: 25),),
                ],    
              ),
          //2nd column
                  Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('F',style: TextStyle(fontSize: 25),),
                  const Text('G',style: TextStyle(fontSize: 25),),
                  const Text('H',style: TextStyle(fontSize: 25),),
                  const Text('I',style: TextStyle(fontSize: 25),),

                //this inkwell is used in other widget  EXCEPT BUTTONS WIDGET  TO perform button like features
                  InkWell(
                    onTap: (){
                      //ignore: avoid_print 
                      print('The picture was clicked');
                    },
                    // ignore: avoid_print
                    onDoubleTap: (){
                      print('The picture was double clicked');
                    },
                      child:Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20), 
                            child: Image(image: image,
                              height: 250,
                              width: 250,
                              fit: BoxFit.cover,
                      ),
                    ),
                  )
                )
              ],
            ),
          ],
        )
      )*/