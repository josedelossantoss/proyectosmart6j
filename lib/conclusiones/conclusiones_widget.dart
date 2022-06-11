import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inicio/inicio_widget.dart';
import '../ofertas/ofertas_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclusionesWidget extends StatefulWidget {
  const ConclusionesWidget({Key key}) : super(key: key);

  @override
  _ConclusionesWidgetState createState() => _ConclusionesWidgetState();
}

class _ConclusionesWidgetState extends State<ConclusionesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFD38F71),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OfertasWidget(),
              ),
            );
          },
        ),
        title: Text(
          'CONCLUSIONES',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InicioWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.next_plan_outlined,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).lineColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  'EN ESTE PROYECTO DE MI EMPRESA S-MART FUE MUY INTERESANTE Y CREATIVO A LA VEZ YA QUE LA CREE EN FLUTLAB Y FLUTTERFLOW\nESTAS FUERON LAS QUE DESARROLLAMOS PAGINAS PARA DISPOSITIVOS MOVILES, ADEMAS DE REALIZAR ACTIVIDADES EN IOS Y ANDROID\nDURANTE TODA LA UNIDAD, ASI QUE ME GUSTO HACER MIS PAGINAS, QUE FUERON LOS PROYECTOS FINALES, PARA CREARLAS UTILICE \nMUCHAS HERRAMIENTAS QUE ME OFRECIERON FLUTTER Y FLUTLAB LO QUE ME FACILITARON TERMINARLAS.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              Image.network(
                'https://raw.githubusercontent.com/josedelossantoss/Flutter-mis-imagenes/main/LOGO.jpg',
                width: 300,
                height: 220,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
