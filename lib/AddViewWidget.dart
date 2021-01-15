import 'dart:io';

import 'package:camera/camera.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

final cameras = availableCameras();



class AddViewWidget extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Image.asset(
                    'assets/images/leaf.png',
                    height: 30,
                    width: 30,
                  ),
        backgroundColor: Color(0xFF87e69a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom : Radius.circular(20)
          )
        ),
      ),
     body: ImagePickerView(),
   );
 }
}
class ImagePickerView extends StatefulWidget {
  const ImagePickerView({ Key key }) : super(key: key);

  @override
  _ImagePickerViewState createState() => _ImagePickerViewState();
}
class _ImagePickerViewState extends State<ImagePickerView>{
  File _image;
  final picker = ImagePicker();

  Future imgFromCam() async {
    final image =  await picker.getImage(source: ImageSource.camera,imageQuality: 50);

    setState((){
     if (image != null) {
        _image = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }
  Future imgFromGallery()async{
    final image =  await picker.getImage(source: ImageSource.gallery,imageQuality: 50);

    setState((){
      if (image != null) {
        _image = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }
  void _showPicker(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.photo_library),
                    title: new Text('Photo Library'),
                    onTap: () {
                      imgFromGallery();
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text('Camera'),
                  onTap: () {
                    imgFromCam();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      }
    );
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
      children: <Widget>[
        SizedBox(
          height: 32,
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              _showPicker(context);
            
            },
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xffFDCF09),
              child: _image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.file(
                        _image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(50)),
                      width: 100,
                      height: 100,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.grey[800],
                      ),
                    ),
            ),
          ),
        ),
        MyCustomForm()
      ],
    ),
    );
  }
}
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  Future<String> get _localPath async{
      final dir = await getApplicationDocumentsDirectory();
      return dir.path;
    }
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nama Barang'
            ),
          ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Harga Barang'
            ),
          ),
          ),
         
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  /* Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data'))); */
                     //final filename = basename(path);
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}