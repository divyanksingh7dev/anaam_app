import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed('Account');
          },
        ),
        title: Text(
          'About',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Text(
                        'About this App-\nThe goal is to provide a platform for the general public to share information on Drug Trafficking with NCB(Narcotics Control Bureau) anonymously.\n\nANAAM is a mobile application developed by -: \n\n-  CHIRAG PATEL\n   [www.chiragpatel.carrd.co]\n\n- DIVYANK SINGH \n   [divyanksingh20@gmail.com]\n\n-  ASHISH BIBYAN\n    [aashishbibyan007@gmail.com]\n\n which acts as a one-way bridge from the general public to the NCB Department i.e You can share the details about the incidents of Drug Trafficking around your neighborhood with the Department without them knowing your true identity. It uses the Tor network that hides your personal information.\n\nData Safety-\nData protection is our top priority, to do so we have integrated Tor which is a network of virtual tunnels that improves your privacy and security on the Internet. into our app which provides an impenetrable defense that safeguards your personal information (like IP address or location) from the department. It only sends the information you want to send to the Department, your personal information never leaves your device. \n\nFeatures-\nProvides a safe platform for the users to give information about Drug Trafficking to NCB Department without revealing their true identity to prevent the youth from getting influenced by the drugs.\n\nPermissions required by the app-\nCamera permission for capturing live evidence\nLocation permission for pinpointing the location of the trafficking.\nStorage permission is required to select and upload your files.\nMicrophone permission is required for capturing the audio of the offense.\nNetwork permission is required to connect to Tor network.\nInternet permission is required to connect to the server\n\nApp info-\nVersion - 1.0\nDownloads\nRequired os- Android or iOS\n',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
