import 'package:flutter/material.dart';
import 'package:money_moora/constants/thame.dart';
import 'package:money_moora/screens/pages/konsultasi_page_hasil.dart';

class KonsultasiInspeksi extends StatelessWidget {
  const KonsultasiInspeksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appbar() {
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
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/back.png'),
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

    Widget _header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Konsul Penyakitmu !!',
              style: blackStyle.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('assets/images/konsul.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Terima Kasih \ntelah menggunakan konsultasi \nterkait penyakitmu..\nSemoga Lekas Sembuh Yaaa... :)',
                  style: blackStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget _content() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 207, 212, 228),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                  'Menurut inspeksi dari dokter kami, \ngejala sakit yang kamu alami yaitu demam ringan, \ndengan minum obat yang kami berikan \nmungkin kamu akan sehat kembali\nJangan lupa minum air putih yang banyak :)',
                  style: blackStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      );
    }

    Widget _button() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KonsultasiHasil(),
                    ),
              );
            },
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 58,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xff4157FF),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Lihat Rekomendasi Obat',
                  style: whiteStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: _appbar(),
            ),
            Flexible(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _header(),
                    _content(),
                    _button(),
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