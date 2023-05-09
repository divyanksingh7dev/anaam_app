import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CoonectingTORWidget extends StatefulWidget {
  const CoonectingTORWidget({Key? key}) : super(key: key);

  @override
  _CoonectingTORWidgetState createState() => _CoonectingTORWidgetState();
}

class _CoonectingTORWidgetState extends State<CoonectingTORWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 5000));

      context.pushNamed('HomePage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: InkWell(
            onTap: () async {
              await Future.delayed(const Duration(milliseconds: 5000));
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0.8),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: Lottie.network(
                          'https://assets5.lottiefiles.com/private_files/lf30_Z8jMER.json',
                          width: 1500,
                          height: 50,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.1),
                    child: GradientText(
                      'Connecting TOR..',
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 32,
                          ),
                      colors: [
                        Color(0xFF6C61E2),
                        FlutterFlowTheme.of(context).secondaryColor
                      ],
                      gradientDirection: GradientDirection.ltr,
                      gradientType: GradientType.linear,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
