import 'package:flutter/material.dart';
import 'package:profilescreen/constants/colors.dart';

import '../widgets/custom_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Icon(Icons.nightlight_round)
                ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width/2.5,
                  height: MediaQuery.of(context).size.height/5,
                decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    border:Border.all(color: AppColors.mainColor,width: 5),
                    color:AppColors.brownColor),
                  child: Icon(Icons.account_circle,color: AppColors.mainColor,size: 100,),
                ),
                SizedBox(height: 20,),
                Center(
                  child: CustomText(
                    text: "John Doe",
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: CustomText(
                    text: "john.doe@example.com",
                    fontSize: 20.0,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/12,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: CustomText(
                        text: "Upgrade to PRO",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                buildSettingsCard(context,'Privacy',Icons.privacy_tip_outlined),
                buildSettingsCard(context,'Purchase History',Icons.history),
                buildSettingsCard(context,'Help & Support',Icons.help_outline_rounded),
                buildSettingsCard(context,'Settings',Icons.settings),
                buildSettingsCard(context,'Invite a Friend',Icons.add_box_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildSettingsCard(BuildContext context, title,icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12,
                  decoration: BoxDecoration(
                      color: AppColors.chipsShade2,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(icon,size: 30),
                              SizedBox(width: 20,),
                              CustomText(
                                text: title,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    )
                  ),
                ),
    );
  }
}
