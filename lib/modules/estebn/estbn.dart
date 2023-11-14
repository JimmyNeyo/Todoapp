  //  drawer:  Drawer(
  //       child: ListView(
  //         padding: EdgeInsets.zero,
  //         children: <Widget>[
  //          const DrawerHeader(
  //             decoration: BoxDecoration(
  //               color: Colors.blue,
  //             ),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 CircleAvatar(
  //                   radius: 40,
  //                   backgroundColor: Colors.white,
  //                   child: Icon(
  //                     Icons.person,
  //                     size: 60,
  //                     color: Colors.blue,
  //                   ),
  //                 ),
  //                 SizedBox(height: 10),
  //                 Text(
  //                   'John Doe',
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 18,
  //                   ),
  //                 ),
  //                 Text(
  //                   'john.doe@example.com',
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 14,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.home),
  //             title: Text('Home'),
  //             onTap: () {
  //               // Handle navigation to home.
  //               Navigator.pop(context);
  //             },
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.star),
  //             title: Text('Favorites'),
  //             onTap: () {
  //               // Handle navigation to favorites.
  //               Navigator.pop(context);
  //             },
  //           ),
  //           Divider(),
  //           ListTile(
  //             leading: Icon(Icons.settings),
  //             title: Text('Settings'),
  //             onTap: () {
  //               // Handle navigation to settings.
  //               Navigator.pop(context);
  //             },
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.exit_to_app),
  //             title: Text('Logout'),
  //             onTap: () {
  //               // Handle logout logic.
  //               Navigator.pop(context);
  //             },
  //           ),
    
  //         ],
  //       ),
  //     ),
  //    a

















  
  // Function to handle image selection

  // Future<void> _selectImage({required pickedImage}) async {
  //   final imagePicker = ImagePicker();
  //   final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

  //   if (pickedImage != null) {
  //     setState(() {
  //       _image = File(pickedImage.path);
  //     });
  //   }
  // }

    //         body:     Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     if (_image != null)
          //       Image.file(
          //         _image!,
          //         height: 200.0,
          //       ),
          //     MaterialButton(
          //       onPressed:() => _selectImage(), // Corrected onPressed
          //       child: Text('Select Image'),
          //     ),
          //   ],
          // ),
          
