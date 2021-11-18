import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 170,
          elevation: 0.1,
          title: const Text('What pokémon are you looking for?'),
          backgroundColor: Colors.white,
          centerTitle: false,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 30,
            fontFamily: GoogleFonts.getFont('Paytone One').fontFamily,
            fontWeight: FontWeight.normal,
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black87,
                  size: 35,
                ))
          ],
        ),
        body: _returnStack());
  }

  Widget _returnStack() {
    final backgroundColor = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
    );

    final logo = Transform.translate(
      offset: const Offset(200, 0),
      child: Transform.rotate(
        angle: -0.3,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.05), BlendMode.dstATop),
          child: Image(
            image: AssetImage('assets/images/pokeball.png'),
          ),
        ),
      ),
    );

    return Stack(
      children: [backgroundColor, logo],
    );
  }
}
