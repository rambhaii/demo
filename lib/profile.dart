import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_application/AppStringFile.dart';
import 'package:resume_application/create_resume.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfileFourPage extends StatefulWidget {
   XFile? imagefiles;

   ProfileFourPage({super.key,required this.imagefiles});

  @override
  State<ProfileFourPage> createState() => _ProfileFourPageState();
}

class _ProfileFourPageState extends State<ProfileFourPage> 
{
 // static const String path = "lib/src/pages/profile/profile4.dart";
@override
  void initState() {
    // TODO: implement initState
   
    super.initState();
    getDataDb();
  }

  
String name="";
String degination="";
String address="";
String expDetails="";
String firstsk="";
String secindSk="";
String thirdSk="";
String fCN="";
String fCJ="";
String fCE="";

String SCN="";
String SCJ="";
String SCE="";
String TCN="";
String TCJ="";
String TCE="";
String FEC="";
String FES="";

String SEC="";
String SES="";
String conatct="";
String email="";
//XFile? imagefiles;


// final scnController = TextEditingController();
// final scJController = TextEditingController();
// final sceController = TextEditingController();
// final tcnController = TextEditingController();
// final tcJController = TextEditingController();
// final tcEController = TextEditingController();
// final FECNController = TextEditingController();
// final FESController = TextEditingController();
// final SECNController = TextEditingController();
// final SESController = TextEditingController();
// final contactController = TextEditingController();
// final emailController = TextEditingController();



getDataDb()
async {
   SharedPreferences  preferences = await SharedPreferences.getInstance();
 setState(() 
    {
           name=preferences.getString(AppStringFile.name).toString();
          degination=preferences.getString(AppStringFile.desigController).toString();
          address=preferences.getString(AppStringFile.address).toString();
           expDetails=preferences.getString(AppStringFile.exeDetailsController).toString();
           firstsk=preferences.getString(AppStringFile.firstskillController).toString();
           secindSk=preferences.getString(AppStringFile.secondskillController).toString();
           thirdSk=preferences.getString(AppStringFile.thirdSkillController).toString();
            fCN=preferences.getString(AppStringFile.fcNController).toString();
            fCJ=preferences.getString(AppStringFile.fcJController).toString();
            fCE=preferences.getString(AppStringFile.fcEController).toString();

             SCN=preferences.getString(AppStringFile.scnController).toString();
            SCJ=preferences.getString(AppStringFile.scJController).toString();
            SCE=preferences.getString(AppStringFile.sceController).toString();

              TCN=preferences.getString(AppStringFile.tcnController).toString();
            TCJ=preferences.getString(AppStringFile.tcJController).toString();
            TCE=preferences.getString(AppStringFile.tcEController).toString();
           
           FEC=preferences.getString(AppStringFile.FECNController).toString();
            FES=preferences.getString(AppStringFile.FESController).toString();
            SEC=preferences.getString(AppStringFile.SECNController).toString();
           SES=preferences.getString(AppStringFile.SESController).toString();
            conatct=preferences.getString(AppStringFile.contactController).toString();
           email=preferences.getString(AppStringFile.emailController).toString();
         // imagefiles=preferences.getString(AppStringFile.img).toString() as XFile?;
   
      
    });

 
   
}


  @override
  Widget build(BuildContext context)
   {
     print("kjdshfgkgdf  ${name}");
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          // IconButton(
          //   icon: const Icon(
          //     FontAwesomeIcons.commentDots,
          //     color: Colors.black54,
          //   ),
          //   onPressed: () {},
          // ),
          IconButton(
            icon: const Icon(
              Icons.edit,
              color: Colors.black54,
            ),
            onPressed: () {

              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
             Row(
      children: [
       
         SizedBox(width: 20.0),
        SizedBox(
            width: 80.0,
            height: 80.0,
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                    radius: 35.0, 
                    backgroundImage:widget. imagefiles!=null?
                             FileImage(File(widget.imagefiles!.path))
                             
                           as ImageProvider
                           :AssetImage("")))),
         SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Text(
               "${name}",
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 10.0),
             Text(" ${degination?? "Full Stack Developer" }",style: TextStyle(fontSize: 10),),
             SizedBox(height: 5.0),
            Row(
              children:  <Widget>[
                Icon(
                  FontAwesomeIcons.map,
                  size: 12.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                address.isNotEmpty?
                Text(
                  "${address ?? "Lucknow ,up"}",
                  style: TextStyle(color: Colors.black54,fontSize: 10),
                )
                : Text(
                  " Lucknow ,up",
                  style: TextStyle(color: Colors.black54,fontSize: 10),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  
            Container(
              margin:  EdgeInsets.all(16.0),
              padding:  EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child:  expDetails.isNotEmpty?
              Text(
                   "${expDetails?? "Over 8+ years of experience and web development and 5+ years of experience in mobile applications development"}"
                   
                  ,style: TextStyle(fontSize: 10),)
            
            :Text(
                    "Over 8+ years of experience and web development and 5+ years of experience in mobile applications development"
                   
                  ,style: TextStyle(fontSize: 10),),
            ),
            _buildTitle("Skills"),
             SizedBox(height: 10.0),
             thirdSk.isNotEmpty?
            _buildSkillRow(thirdSk, 0.75)
            : _buildSkillRow("Wordpress", 0.75),
             SizedBox(height: 5.0),
             secindSk.isNotEmpty?
            _buildSkillRow(secindSk, 0.6): 
            _buildSkillRow("Laravel", 0.6),

            const SizedBox(height: 5.0),
            thirdSk.isNotEmpty?
            _buildSkillRow(thirdSk, 0.65): _buildSkillRow("Flutter ", 0.65),
           const SizedBox(height: 30.0),
            _buildTitle("Experience"),
            fCN.isNotEmpty?
            _buildExperienceRow(
                company: fCN,
                position: "Wordpress Developer",
                duration: "${fCJ} - ${fCE}"): 
                _buildExperienceRow(
                company: "GID Nepal",
                position: "React Js Developer",
                duration: "2020- 2021"),

           SCN.isNotEmpty?
            _buildExperienceRow(
                company: SCN,
                position: "Laravel Developer",
                duration: "${SCJ} - ${SCE}"): _buildExperienceRow(
                company: "ABC Tech",
                position: "Java Developer",
                duration: "2021 - 2021"),
            _buildExperienceRow(
                company: "Popup Bits Pvt. Ltd.",
                position: "Web Developer",
                duration: "2015 - 2018"),
                TCN.isNotEmpty?
            _buildExperienceRow(
                company: TCN,
                position: "Flutter Developer",
                duration: "${TCJ} - ${TCE}"):
                 _buildExperienceRow(
                company: "Spire Bits Pvt. Ltd.",
                position: "Flutter Developer",
                duration: "2022- current"),
            const SizedBox(height: 20.0),
            _buildTitle("Education"),

//             String FEC="";
// String FES="";

// String SEC="";
// String SES="";
            const SizedBox(height: 5.0),
            FEC.isNotEmpty?
            _buildExperienceRow(
                company: FEC,
                position: FES,
                duration: ""):
                 _buildExperienceRow(
                company: "Lucknow University, Up",
                position: "B.Sc. Computer Science and Information Technology",
                duration: "2011 - 2015"),
                SEC.isNotEmpty?
            _buildExperienceRow(
                company: SEC,
                position: SES,
                duration: ""):
                  _buildExperienceRow(
                company: "Cambridge University, UK",
                position: "B.tech",
                duration: "2008 - 2010"),
           
            _buildTitle("Contact"),
            const SizedBox(height: 5.0),
            Row(
              children:  <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                email.isNotEmpty?
                Text(
                  email,
                  style: TextStyle(fontSize: 10.0),
                ): Text(
                  "praksh1509474@gmail.com",
                  style: TextStyle(fontSize: 10.0),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children:  <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                conatct.isNotEmpty?
                Text(
                  "+977-9818523107",
                  style: TextStyle(fontSize: 10.0),
                ):Text(
                  "+91 6393100157",
                  style: TextStyle(fontSize: 10.0),
                ),
              ],
            ),
            _buildSocialsRow(),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        const SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: const Icon(FontAwesomeIcons.facebookF),
          onPressed: () {
          
          },
        ),
        const SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: const Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchURL("https://github.com//rambhaii");
          },
        ),
        const SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: const Icon(FontAwesomeIcons.youtube),
          onPressed: () {
           
          },
        ),
        const SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {required String company, String? position, String? duration}) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: const TextStyle(color: Colors.black,fontSize: 12,
         fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position $duration",style: TextStyle(fontSize: 10),),
    );
  }

  Row _buildSkillRow(String skill, double level) 
  {
    return Row(

      children: <Widget>[
        const SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
              style:TextStyle(fontSize: 8) ,
            )),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) 
  {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: const TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

 

}
