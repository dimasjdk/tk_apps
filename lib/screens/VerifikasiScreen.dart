import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tk_apps/screens/HomeScreen.dart';


class VerifikasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.network(
          "https://raw.githubusercontent.com/putraxor/flutter-login-ui/master/assets/logo.png",
        ),
      ),
    );

    

    final kode = TextFormField(
      keyboardType: TextInputType.text,
      textAlign: TextAlign.center,
      autofocus: false,
      decoration: InputDecoration(
        hintText: '-   -   -   -   -   -',
      ),
    );

    final sendButton = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.lightBlueAccent,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              _onVerif(context);
            },
            child: Text('Verifikasi', style: TextStyle(color: Colors.white)),
          ),
    );

    final resendButton = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.lightBlueAccent,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              
            },
            child: Text('Kirim Ulang Kode OTP', style: TextStyle(color: Colors.white)),
          ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 10.0),
            Text(
              'Verifikasi OTP',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue[400],
                ),
              
            ),
            SizedBox(height: 48.0,),
            kode,
            SizedBox(height: 48.0),
            sendButton,
            SizedBox(
              height: 10.0
            ),
            resendButton,
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

void _onVerif(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

