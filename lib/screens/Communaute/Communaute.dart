import 'package:artivity_front/screens/defiLitteraire/DefiLitteraire.dart';
import 'package:artivity_front/screens/presentation_defi/widgets/Defi.dart';
import 'package:artivity_front/screens/accueil/widgets/CreationCard.dart';

import 'package:artivity_front/screens/widgets/Headbar.dart';
import 'package:artivity_front/screens/widgets/ReturnButton.dart';
import 'package:artivity_front/theme/constants.dart';
import 'package:flutter/material.dart';

import '../../theme/style.dart';
import '../widgets/ReusableFilledButton.dart';

class Communaute extends StatelessWidget {
  const Communaute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: MediaQuery.of(context).size.width - 5,
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
            children: [

              // ----- App bar -----
              Headbar(
                  leftContainer: ReturnButton(),
                  text: "Communauté",
                  rightContainer: Image.asset('assets/images/friends.png', width:48/*height: 10,*/)),
              Container(
                height: MediaQuery.of(context).size.height - 123 - 40,
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                        children: [
                          SizedBox(height: 20),
                          // ----- Texte -----
                          Container(
                              padding: EdgeInsets.only(left: 20.0),
                              width: MediaQuery.of(context).size.width,
                              child: Text("Défis en cours",textAlign: TextAlign.left ,style: Styles.challengeDescription)
                          ),
                          SizedBox(height: 10),

                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Column( // cards
                              children: [
                                Row(
                                  children: [
                                    CreationCard(title: "Un chaton dans la rue", author: "Jean C.", date: "14/02/2022", imgUrl: "assets/images/creation_placeholder.png"),
                                    CreationCard(title: "Un chaton dans la rue", author: "Jean C.", date: "14/02/2022", imgUrl: "assets/images/creation_placeholder.png"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CreationCard(title: "Un chaton dans la rue", author: "Jean C.", date: "14/02/2022", imgUrl: "assets/images/creation_placeholder.png"),
                                    CreationCard(title: "Un chaton dans la rue", author: "Jean C.", date: "14/02/2022", imgUrl: "assets/images/creation_placeholder.png"),
                                  ],
                                )
                              ],
                            ),
                          ),

                          // ----- Type défi + infos -----
                          /*Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            decoration: BoxDecoration(color: Styles.accentColor,borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Column(
                              children: [
                                Defi(challengeType: CHALLENGE_TYPE_ECRITURE, invitedBy: "Chris D.", executionTime: "2", leftTime: "2h", eval: 2, artists: "122345",),
                              ],
                            ),
                          ),*/
                          SizedBox(height: 20),

                          // ----- Texte -----
                          Container(
                              padding: EdgeInsets.only(left: 20.0),
                              width: MediaQuery.of(context).size.width,
                              child: Text("Notifications",textAlign: TextAlign.left ,style: Styles.challengeDescription)
                          ),
                          SizedBox(height: 10),

                          // ----- Notifications + scrollbar -----
                          Container(
                            height: 150,
                            child: Scrollbar(
                              child: SingleChildScrollView(
                                child: Column(
                                    children: [
                                      // Notification
                                      Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              child: Image.asset('assets/images/ARTHUR.png', width: 48,),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width - 90,
                                              margin: const EdgeInsets.symmetric(horizontal: 10),
                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              decoration: BoxDecoration(color: Styles.greyedOutColor,borderRadius: BorderRadius.all(Radius.circular(15)),
                                              ),
                                              child: Column(
                                                children: [
                                                  //Image.asset('assets/images/ARTHUR.png', width: 48,),
                                                  Container(
                                                      padding: EdgeInsets.only(left: 5.0),
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text("Albus D. t’as envoyé un message.",textAlign: TextAlign.left ,style: Styles.notificationDescription)
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                      ),

                                      // ----- Notification -----
                                      Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              child: Image.asset('assets/images/ARTHUR.png', width: 48,),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width - 90,
                                              margin: const EdgeInsets.symmetric(horizontal: 10),
                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              decoration: BoxDecoration(color: Styles.greyedOutColor,borderRadius: BorderRadius.all(Radius.circular(15)),
                                              ),
                                              child: Column(
                                                children: [
                                                  //Image.asset('assets/images/ARTHUR.png', width: 48,),
                                                  Container(
                                                      padding: EdgeInsets.only(left: 5.0),
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text("Barbra S. t’as invité à un défi poésie collaborative. Rejoins son équipe ! Sois créatif !",textAlign: TextAlign.left ,style: Styles.notificationDescription)
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                      ),

                                      // ----- Notification -----
                                      Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              child: Image.asset('assets/images/ARTHUR.png', width: 48,),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width - 90,
                                              margin: const EdgeInsets.symmetric(horizontal: 10),
                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              decoration: BoxDecoration(color: Styles.greyedOutColor,borderRadius: BorderRadius.all(Radius.circular(15)),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                      padding: EdgeInsets.only(left: 5.0),
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text("Il te reste une heure pour le défi de dessin abstrait.",textAlign: TextAlign.left ,style: Styles.notificationDescription)
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                      ),

                                      // ----- Notification -----
                                      Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              child: Image.asset('assets/images/ARTHUR.png', width: 48,),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width - 90,
                                              margin: const EdgeInsets.symmetric(horizontal: 10),
                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              decoration: BoxDecoration(color: Styles.greyedOutColor,borderRadius: BorderRadius.all(Radius.circular(15)),
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                      padding: EdgeInsets.only(left: 5.0),
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text(" Il te reste 30 minutes pour le défi littéraire",textAlign: TextAlign.left ,style: Styles.notificationDescription)
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                      ),
                                    ]
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ]
                    ),
                  ),
                ),

              ),
            ]
        ),
      ),
    );
  }
}
