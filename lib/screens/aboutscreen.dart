import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "About Us",
            style: GoogleFonts.inconsolata(
              fontSize: 28,
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                //header
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Prayer Fellowship",
                        style: GoogleFonts.inconsolata(
                          fontSize: 22,
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(0, -4, 0),
                        child: Text(
                          "ప్రార్ధనా సహవాసము",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Image1
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform(
                        transform: Matrix4.translationValues(0, 10, 0),
                        child: Text(
                          "ప్రార్ధనా సహవాస వ్యవస్థాపకులు",
                          style: GoogleFonts.inconsolata(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Image(
                          image: AssetImage('assets/imgs/about1.jpg'),
                          width: 320,
                          height: 290,
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(0, -8, 0),
                        child: Text(
                          "కీ.శే.పర్వతరెడ్డి డేవిడ్ కోటేశ్వరరావు గారు",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(0, -10, 0),
                        child: Text(
                          "దీవెనమ్మ గారు",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Image2
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform(
                        transform: Matrix4.translationValues(0, 10, 0),
                        child: Text(
                          "మన ఆత్మీయ తల్లిదండ్రులు",
                          style: GoogleFonts.inconsolata(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(0, -10, 0),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Image(
                            image: AssetImage('assets/imgs/about3.jpg'),
                            width: 320,
                            height: 290,
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(0, -28, 0),
                        child: Text(
                          "రెవ.డా.దోమతోటి సర్వేశ్వరరావు గారు",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(0, -30, 0),
                        child: Text(
                          "బ్యూలా సర్వేశ్వరరావు గారు",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 700,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "యేసు క్రీస్తు ప్రభువు నామంలో అందరికి వందనములు.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "దేవుడు మనకు ఈ పాటలు అనుగ్రహించెను.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "ఈ పాటలు విని, నేర్చుకోని,పాడుట వలన ప్రభువుని మహిమ పరచండి.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "ఈ పాటలు మీకు ప్రభువు యొక్క సమాధానం,సంతోషం,శాంతి,సమృద్ధి మరియు మన ప్రభువు యొక్క ఆత్మను అనుగ్రహించును గాక.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "యేసుక్రీస్తు ప్రభువు మనందరినీ దీవించి ఆశీర్వదించును గాక! ఆమెన్.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 700,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "మన ఆశయం",
                          style: GoogleFonts.inconsolata(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "యేసు ప్రభువు వలె జీవించుట.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "యేసు ప్రభువు వలె పనిచేయుట.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "మన అంశం",
                          style: GoogleFonts.inconsolata(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "దేవునికే మహిమ.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "ప్రజలకు దీవెన.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 700,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "మా చిరునామా",
                          style: GoogleFonts.inconsolata(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "4-15-126/72,బాబు జగజ్జీవన్ రామ్ కాలనీ,2వ లైను అమరావతి రోడ్,గుంటూరు-522002.",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "ఫోన్:9553707730,9494414941",
                          style: GoogleFonts.inconsolata(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
