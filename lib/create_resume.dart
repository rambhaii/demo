


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:resume_application/AppStringFile.dart';
import 'package:resume_application/EditTextWidget.dart';
import 'dart:io';

import 'package:resume_application/dialoghelper.dart';
import 'package:resume_application/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddStudentInformation extends StatefulWidget {
  const AddStudentInformation({Key? key}) : super(key: key);

  @override
  State<AddStudentInformation> createState() => _AddStudentInformation();
}

class _AddStudentInformation extends State<AddStudentInformation> 
{


  final ImagePicker imgpicker = ImagePicker();
  XFile? imagefiles;

  openImages() async {
    try {
      final XFile? image =await imgpicker.pickImage(source: ImageSource.gallery);

      if (image != null) 
      {
        imagefiles = image;
        setState(() {});
      } else 
      {
        DialogHelper.showFlutterToast( strMsg: "imageNotSelected");
      }
    } catch (e) {
      DialogHelper.showFlutterToast(strMsg: 'Error while picking file');
    }
  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  
  final desigController = TextEditingController();
  final addressController = TextEditingController();
  
final exeDetailsController = TextEditingController();
final firstskillController = TextEditingController();
final secondskillController = TextEditingController();
final thirdSkillController = TextEditingController();
final fcNController = TextEditingController();
final fcJController = TextEditingController();
final fcEController = TextEditingController();
final scnController = TextEditingController();
final scJController = TextEditingController();
final sceController = TextEditingController();
final tcnController = TextEditingController();
final tcJController = TextEditingController();
final tcEController = TextEditingController();
final FECNController = TextEditingController();
final FESController = TextEditingController();
final SECNController = TextEditingController();
final SESController = TextEditingController();
final contactController = TextEditingController();
final emailController = TextEditingController();





  
  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 40, right: 12, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                         imagefiles!=null?
                             FileImage(File(imagefiles!.path))
                             
                           as ImageProvider
                           :AssetImage(""),
                      
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () 
                            {
                              openImages();
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.tealAccent,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                 
                         
                    ],
                  ),
                  SafeArea(
                      child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Text(
                                     "Full Name",
                                      style:TextStyle(
                                        fontSize: 10
                                      ),
                                    ),
                                    EditTextWidget(
                                      textEditingController: nameController,
                                      hinttext: "Enter Your Name",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                     Text(
                                     "Designation",
                                      style:TextStyle(
                                        fontSize: 10
                                      ),
                                    ),
                                    EditTextWidget(
                                      textEditingController: desigController,
                                      hinttext: "Enter Your designation",
                                      keyboardType: TextInputType.number,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                     Text(
                                     "Full Address",
                                      style:TextStyle(
                                        fontSize: 10
                                      ),
                                    ),
                                    EditTextWidget(
                                      textEditingController: addressController,
                                      hinttext: "Enter Your address",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    
                       Text(
                                     "Experience",
                                      style:TextStyle(
                                        fontSize: 10
                                      ),
                                    ),
                                    EditTextWidget(
                                      textEditingController: exeDetailsController,
                                      hinttext: "Enter Your Experience details",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    
                       Text(
                                     "Skills",
                                      style:TextStyle(
                                        fontSize: 10
                                      ),
                                    ),
                                    EditTextWidget(
                                      textEditingController: firstskillController,
                                      hinttext: "Enter Your first skille",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                      
                                    SizedBox(
                                      height: 5,
                                    ),
                                    EditTextWidget(
                                      textEditingController:secondskillController,
                                      hinttext: "Enter Your second skille",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                    
                                    SizedBox(
                                      height: 5,
                                    ),
                                    EditTextWidget(
                                      textEditingController: thirdSkillController,
                                      hinttext: "Enter Your third skille",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                    
                                   SizedBox(
                                      height: 5,
                                    ),
                                     Text(
                                     "Experience",
                                      style:TextStyle(
                                        fontSize: 10
                                      ),
                                    ),
                                    EditTextWidget(
                                      textEditingController: fcNController,
                                      hinttext: "Enter Your Company Name",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                
                                 SizedBox(
                                      height: 5,
                                    ),  Row(
                                    children: [
                      
                             Container(
                              width: 180,
                               child: EditTextWidget(
                                        textEditingController: fcJController,
                                        hinttext: "Joing date and year",
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                      if (value.toString().isEmpty) 
                      {
                        return "";
                      }
                      return null;
                                        },
                                      ),
                             ),
                              SizedBox(
                                      width: 5,
                                    ),
                                     Container(
                                      width: 180,
                                       child: EditTextWidget(
                                        textEditingController: fcEController,
                                        hinttext: "End date",
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                      if (value.toString().isEmpty) 
                      {
                        return "";
                      }
                      return null;
                                        },
                                 ),
                                     ),
                                 
                                 
                                    ],
                                  ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                     EditTextWidget(
                                      textEditingController: scnController,
                                      hinttext: "Enter Your Company Name",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                
                                 SizedBox(
                                      height: 5,
                                    ),  Row(
                                    children: [
                      
                             Container(
                              width: 180,
                               child: EditTextWidget(
                                        textEditingController: scJController,
                                        hinttext: "Joing date and year",
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                      if (value.toString().isEmpty) 
                      {
                        return "";
                      }
                      return null;
                                        },
                                      ),
                             ),
                              SizedBox(
                                      width: 5,
                                    ),
                                     Container(
                                      width: 180,
                                       child: EditTextWidget(
                                        textEditingController: sceController,
                                        hinttext: "End date",
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                      if (value.toString().isEmpty) 
                      {
                        return "";
                      }
                      return null;
                                        },
                                 ),
                                     ),
                                 
                                 
                                    ],
                                  ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                     EditTextWidget(
                                      textEditingController: tcnController,
                                      hinttext: "Enter Your Company Name",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                
                                 SizedBox(
                                      height: 5,
                                    ),  Row(
                                    children: [
                      
                             Container(
                              width: 180,
                               child: EditTextWidget(
                                        textEditingController: tcJController,
                                        hinttext: "Joing date and year",
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                      if (value.toString().isEmpty) 
                      {
                        return "";
                      }
                      return null;
                                        },
                                      ),
                             ),
                              SizedBox(
                                      width: 5,
                                    ),
                                     Container(
                                      width: 180,
                                       child: EditTextWidget(
                                        textEditingController: tcEController,
                                        hinttext: "End date",
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                      if (value.toString().isEmpty) 
                      {
                        return "";
                      }
                      return null;
                                        },
                                 ),
                                     ),
                                 
                                 
                                    ],
                                  ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    
                       Text(
                                     " Education",
                                      style:TextStyle(
                                        fontSize: 10
                                      ),
                                    ),
                                     EditTextWidget(
                                      textEditingController: FECNController,
                                      hinttext: "Enter your collage name",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                
                                 SizedBox(
                                      height: 5,
                                    ), 
                                     Container(
                                     width: 180,
                                      child: EditTextWidget(
                           textEditingController: FESController,
                           hinttext: "specialization",
                           keyboardType: TextInputType.text,
                           validator: (value) {
                             if (value.toString().isEmpty) 
                             {
                               return "";
                             }
                             return null;
                           },
                         ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                      EditTextWidget(
                                      textEditingController: SECNController,
                                      hinttext: "Enter your collage name",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                
                                 SizedBox(
                                      height: 5,
                                    ), 
                                     Container(
                                     width: 180,
                                      child: EditTextWidget(
                           textEditingController: SESController,
                           hinttext: "specialization",
                           keyboardType: TextInputType.text,
                           validator: (value) {
                             if (value.toString().isEmpty) 
                             {
                               return "";
                             }
                             return null;
                           },
                         ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                      
                      
                      
                      
                                   
                                    
                                      Text(
                                     "Contact",
                                      style:TextStyle(
                                        fontSize: 10
                                      ),
                                    ),
                                    EditTextWidget(
                                      textEditingController: contactController,
                                      hinttext: "Enter Your Contact",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    
                                     EditTextWidget(
                                      textEditingController: emailController,
                                      hinttext: "Enter Your email",
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.toString().isEmpty) 
                                        {
                      return "";
                                        }
                                        return null;
                                      },
                                    ),
                                     SizedBox(
                                      height: 20,
                                    ),
                      
                                     InkWell(
                            onTap: () async 
                            {

                               if (_formKey.currentState!.validate())
                               {
                                  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                                    sharedPreferences.setString(AppStringFile.address, addressController.text.toString());
                                    sharedPreferences.setString(AppStringFile.name, nameController.text.toString());
                                      sharedPreferences.setString(AppStringFile.desigController, desigController.text..toString());
                                      sharedPreferences.setString(AppStringFile.exeDetailsController, exeDetailsController.text..toString());
                                     
                                      sharedPreferences.setString(AppStringFile.firstskillController, firstskillController.text..toString());
                                      sharedPreferences.setString(AppStringFile.secondskillController, secondskillController.text..toString());
                                      sharedPreferences.setString(AppStringFile.thirdSkillController, thirdSkillController.text..toString());
                                      sharedPreferences.setString(AppStringFile.fcNController, fcNController.text..toString());
                                      sharedPreferences.setString(AppStringFile.fcJController, fcJController.text..toString());
                                      sharedPreferences.setString(AppStringFile.fcEController, fcEController.text..toString());
                                      sharedPreferences.setString(AppStringFile.scnController, scnController.text..toString());

  sharedPreferences.setString(AppStringFile.scJController, scJController.text..toString());
  sharedPreferences.setString(AppStringFile.sceController, sceController.text..toString());

  sharedPreferences.setString(AppStringFile.tcnController, tcnController.text..toString());
  sharedPreferences.setString(AppStringFile.tcJController, tcJController.text..toString());
  sharedPreferences.setString(AppStringFile.tcEController, tcEController.text..toString());

  sharedPreferences.setString(AppStringFile.FECNController, FECNController.text..toString());
  sharedPreferences.setString(AppStringFile.FESController, FESController.text..toString());
  sharedPreferences.setString(AppStringFile.SECNController, SECNController.text..toString());
  sharedPreferences.setString(AppStringFile.SESController, SESController.text..toString());

  sharedPreferences.setString(AppStringFile.contactController, contactController.text..toString());
  sharedPreferences.setString(AppStringFile.emailController, emailController.text..toString());


                        
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => 
                        ProfileFourPage(
                        imagefiles: imagefiles,

                        )));
                      
                         
                        
                         
                               }
                                
                            },
                            child: Container(
                              height:  40,
                             
                              decoration: BoxDecoration(
                                  color: Colors.tealAccent,
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "submit",
                                    style: TextStyle(
                                        color:  Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                         SizedBox(
                                      height: 40,
                                    ),
                      
                                    
                        
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
         
        ],
      ),
    );
  }
    





}
