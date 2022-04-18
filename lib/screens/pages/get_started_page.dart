import 'package:flutter/material.dart';
import 'package:money_moora/constants/thame.dart';
import 'package:money_moora/screens/pages/home_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/get-started.png',
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Cari Rekomendasi Obat ',
                            style: boldStyle.copyWith(
                              fontSize: 25,
                              color: kpinkColor,
                            ),
                          ),
                          
                          Text(
                            'untuk Penyakitmu',
                            style: boldStyle.copyWith(
                              fontSize: 25,
                              color: kprimeColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'A brand new experience\nof managing your business',
                    style: whiteStyle.copyWith(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kprimeColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Ayo Mulai!',
                    style: boldStyle.copyWith(
                      color: kwhiteColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
