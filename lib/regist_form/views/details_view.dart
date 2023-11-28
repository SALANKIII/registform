import 'package:flutter/material.dart';
import 'package:forms/regist_form/models/user.dart';

class DetailsView extends StatelessWidget {
  DetailsView({required this.user});

  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details view"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Vezetéknév: "),
            Text(user.firstname),
            Text("Keresztnév: "),
            Text(user.lastname),
            Text("Dátum: "),
            Text(user.date.toString()),
            Text("Neme: "),
            Text((user.male) ? "Férfi" : "Nő"),
            Text("Kedvenc autómárka: "),
            Text(user.favoriteCarBrand),
            Text("Kedvenc színek: "),
            Text(user.favoriteColors.toString()),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: user.favoriteColors.length,
              itemBuilder: (_, i) {
                return Text(user.favoriteColors[i]);
              },
            )
          ],
        ),
      ),
    );
  }
}
