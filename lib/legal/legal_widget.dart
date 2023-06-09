import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LegalWidget extends StatefulWidget {
  const LegalWidget({Key? key}) : super(key: key);

  @override
  _LegalWidgetState createState() => _LegalWidgetState();
}

class _LegalWidgetState extends State<LegalWidget> {
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
          'Legal',
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
                        '\nINTRODUCTION:\n\nThis Privacy Policy sets out how we, ANAAM , use and protect your personal data that you provide to us, or that is otherwise obtained or generated by us, in connection with your use of our cloud-based messaging services (the “Services”). For the purposes of this Privacy Policy, ‘we’, ‘us’ and ‘our’ refers to ANAAM, and ‘you’ refers to you, the user of the Services.\nOur app allows you to share information related to \"drug trafficking\" anonymously to the NCB( Narcotics Control Bureau). \n\nTECHNICAL BACKGROUND \n\nThe app has been built on Flutter, which is an open source software development kit, a cross-platform development tool that can use the same code base to develop iOS and Android applications. Anonymity is provided by the use of TOR which works on the principle of onion routing. To filter out legitimate information the use of machine learnings email spam detection algorithm will be used . Further ramifications will continue to develop to enhance the performance.\n\n\nPRIVACY PRINCIPLES\n\nWe have the following fundamental privacy principles  :\n• Keeping the user\'s identity anonymous. \n• We promptly provide information provided by you to respective government agencies for prompt action.\n• Information apart from identity,like location are kept private and secure .\n• The most crucial aspect of ANAAM is \" anonymity \" , TOR comes to aid in this prospect , which works on the principle of onion routing. \n\nPERMISSION AND DEPENDENCIES\n\n• Internet access : enabled to use Anaam which will be mandatory to fill the form and submit it to NCB. Without internet access you will not be able to access TOR VPN.\n• Camera : necessary for the purpose of capturing evidences in the form of photos or videos .\n• Microphone:required for recording  the audio evidences , helpful in capturing the guilty. \n\nLINKS TO OTHER SITES:\n\nOur app may provide you with TOR links which may collect the information you want to submit regardless of your personal identity. \n\nSUPPORT:\n\nIf you have any query, concern or conplaint in relation to collection or usage of your personal information under this privacy policy. Please contact us at.........com \n\nCHANGES TO THIS POLICY\n\nWe may revise this policy from time to time without any further notification. The most current version will govern our use of the information provided by your anonymous account.',
                        textAlign: TextAlign.start,
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
