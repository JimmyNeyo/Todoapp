/*درس الكافر وافلورده والديكوريشن بوكس

Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),

              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                      
                  alignment: Alignment.bottomCenter,
                
                      
                children: [
                      
                  
                  Image(
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://static.pexels.com/photos/36753/flower-purple-lical-blosso.jpg'),
                  ),
                      
                  Container(
                    width: 250,
                    color:Colors.amber.withOpacity(.6),
                      
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                     
                      "To do app ",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      
                    ),
                  
                  
                  ),
                
                
                
                ],
              ),
            ),
          ),
        ],
      ),*/

