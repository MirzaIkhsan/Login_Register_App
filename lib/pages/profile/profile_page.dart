import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_register_app/pages/change_profile/change_profile_page.dart';
import 'package:login_register_app/widgets/custom_text_button.dart';
import 'package:login_register_app/widgets/user_info.dart';

import '../../constants/controllers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  final baseImage = 'https://drive.google.com/uc?export=view&id';

  Widget _buildChangePhotoIcon() {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Align(
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.green[300],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50),

            ////
            //// Profile Picture
            ////
            userController.profilePhotoUrl != null
                ? Center(
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Image.network(
                            '$baseImage=1t0Jb1SuRIB5-fOE6Z8kdCsM_TguoM-DS',
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        _buildChangePhotoIcon(),
                      ],
                    ),
                  )
                : Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[350],
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 100,
                          ),
                        ),
                        _buildChangePhotoIcon(),
                      ],
                    ),
                  ),

            SizedBox(height: 50),

            ////
            //// User info
            ////
            Obx(
              () => UserInfo(title: 'Name', text: userController.name!),
            ),
            // Obx(
            //   () => UserInfo(title: 'Username', text: userController.username!),
            // ),
            // Obx(
            //   () => UserInfo(title: 'Email', text: userController.email!),
            // ),

            // SizedBox(height: 20),
            Spacer(),

            ////
            //// Button change
            ////
            CustomTextButton(
              text: 'Edit Profile',
              onPressed: () => Get.to(() => ChangeProfilePage()),
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
