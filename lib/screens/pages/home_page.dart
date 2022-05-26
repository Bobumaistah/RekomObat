import 'package:flutter/material.dart';
import 'package:money_moora/constants/thame.dart';
import 'package:money_moora/screens/pages/konsultasi_page.dart';
import 'package:money_moora/screens/pages/navigation_draw.dart';
import 'package:money_moora/screens/widgets/card_fitur.dart';
import 'package:money_moora/screens/widgets/top_dokter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 5,
          left: 10,
          right: 35,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
              builder: (context) {
                return InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: kgreyColor,
                  highlightColor: kgreyColor,
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/more.png'),
                      ),
                    ),
                  ),
                );
              },
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget nameSection() {
      return Container(
        margin: const EdgeInsets.only(top: 10, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Evening',
              style: blackStyle.copyWith(fontSize: 18),
            ),
            Text(
              'Ilham Maulana',
              style: boldStyle.copyWith(
                fontSize: 28,
                color: kblackColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      );
    }

    Widget banner() {
      return Container(
        margin: const EdgeInsets.only(top: 10, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ayo Konsultasi \nPenyakit mu',
              style: boldStyle.copyWith(fontSize: 25),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      );
    }

    Widget operation() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 5),
        padding: const EdgeInsets.only(left: 20, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Fitur',
              style: extraBoldStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                    color: kprimeColor,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: kprimeColor.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: kprimeColor.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget Fitur() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 20),
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KonsultasiPage(),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(15),
                child: const Cardfeature(
                  imageUrl: 'assets/images/konsul.png',
                  text: 'Konsultasi',
                  cardColor: kwhiteColor,
                  textColor: kprimeColor,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Cardfeature(
                imageUrl: 'assets/images/insights-tracking.png',
                text: 'Apotek Terdekat',
                cardColor: kwhiteColor,
                textColor: kprimeColor,
              ),
            ],
          ),
        ),
      );
    }

    Widget transactionHistories() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 22, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Dokter',
              style: extraBoldStyle.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox()
          ],
        ),
      );
    }

    Widget docContent() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          children: const [
            topDokter(
              imageUrl: 'assets/images/uber.png',
              title: 'dr. Gabi',
              subtitle: 'Spesialis Ibu & Anak - RS Permata Hati',
            ),
            topDokter(
              imageUrl: 'assets/images/nike.png',
              title: 'dr. Eren Rumbling',
              subtitle: 'Dokter Umum - RS Cempaka Lima',
            ),
            topDokter(
              imageUrl: 'assets/images/peyment-receive.png',
              title: 'dr. Mikasa Bucchin',
              subtitle: 'Dokter Spesialis Gigi - RSUDZA',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      drawer: const NavigationDrew(),
      backgroundColor: kbackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: header(),
            ),
            Flexible(
              flex: 10,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nameSection(),
                    banner(),
                    operation(),
                    Fitur(),
                    transactionHistories(),
                    docContent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
