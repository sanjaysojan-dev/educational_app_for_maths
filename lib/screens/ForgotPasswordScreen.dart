import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ForgotPasswordScreen extends StatefulWidget {

  const ForgotPasswordScreen ({Key? key}) : super (key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();

}

class _ForgotPasswordState extends State <ForgotPasswordScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {







    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton (
          icon: Icon(Icons.arrow_back, color: Colors.blueAccent,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center (
        child: SingleChildScrollView (
          child: Container (
            color: Colors.white,

            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("RESET YOUR PASSWORD",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),)
                      ],
                    ),
                    SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Type in your email address and "
                            "we'll send you an email on how to create a new password",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),)
                      ],
                    ),

                    SizedBox(height: 45),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }

}