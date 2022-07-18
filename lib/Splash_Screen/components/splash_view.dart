import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  final AnimationController animationController;

  const SplashView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final introductionanimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: const Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: introductionanimation,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 200),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/introduction_animation/logo.png",
                      height: 225,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                "Politeknik TEDC Bandung",
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 64, right: 64),
              child: Text(
                "Jl. Pesantren No.2, Cibabat, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat 40513",
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom + 16),
              child: InkWell(
                onTap: () {
                  widget.animationController.animateTo(0.2);
                },
                child: Container(
                  height: 58,
                  padding: const EdgeInsets.only(
                    left: 56.0,
                    right: 56.0,
                    top: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.0),
                    color: const Color(0xffffffff),
                  ),
                  child: const Text(
                    "Get Started !",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
