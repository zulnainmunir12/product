import 'package:Product/ui/shared/app_colors.dart';
import 'package:Product/ui/view/authentication/landing_view.dart';
import 'package:Product/ui/widget/my_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Product/ui/widget/horizontal_spacing.dart';

class SignUpView extends StatefulWidget {
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _editingController = TextEditingController();
  final TextEditingController _textEditingController = TextEditingController();
  var cities = ['Lahore', 'Faisalabad', 'Sahiwal'];
  var area = ['Behria', 'Johar Town', 'Faroz Pur Road'];
  var location = ['Abc', 'Def', 'Hij'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Image.asset(
                  'assets/image/logo.png',
                  height: 90,
                )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey.shade200,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  // spreadRadius: 5,
                                  blurRadius: 3,
                                  offset: Offset(0, 4))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/image/google_logo.png',
                              height: 23,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey.shade200,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  // spreadRadius: 5,
                                  blurRadius: 3,
                                  offset: Offset(0, 4))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/image/fb_logo.png', height: 23),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Or',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Material(
                        elevation: 7.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 18.0),
                            fillColor: Colors.white,
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.account_circle_outlined,
                              color: AppColor.primaryColor,
                              size: 28,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          cursorColor: AppColor.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 7.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 18.0),
                            fillColor: Colors.white,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: AppColor.primaryColor,
                              size: 28,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          cursorColor: AppColor.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Add Your Address',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _dropDown(cities, 'Choose your City', Icons.apartment),
                      Material(
                        elevation: 7.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 18.0),
                            fillColor: Colors.white,
                            hintText: 'Choose your City',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.apartment,
                              color: AppColor.primaryColor,
                              size: 28,
                            ),
                            suffixIcon: PopupMenuButton<String>(
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: AppColor.primaryColor,
                              ),
                              onSelected: (String value) {
                                _controller.text = value;
                              },
                              itemBuilder: (BuildContext context) {
                                return cities
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          cursorColor: AppColor.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 7.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: TextField(
                          controller: _editingController,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 18.0),
                            fillColor: Colors.white,
                            hintText: 'Choose your Area',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.home_sharp,
                              color: AppColor.primaryColor,
                              size: 28,
                            ),
                            suffixIcon: PopupMenuButton<String>(
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: AppColor.primaryColor,
                              ),
                              onSelected: (String value) {
                                _editingController.text = value;
                              },
                              itemBuilder: (BuildContext context) {
                                return area
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          cursorColor: AppColor.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 7.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 18.0),
                            fillColor: Colors.white,
                            hintText: 'Location',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.location_on_outlined,
                              color: AppColor.primaryColor,
                              size: 28,
                            ),
                            suffixIcon: PopupMenuButton<String>(
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: AppColor.primaryColor,
                              ),
                              onSelected: (String value) {
                                _controller.text = value;
                              },
                              itemBuilder: (BuildContext context) {
                                return location
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          cursorColor: AppColor.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 7.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 18.0),
                            fillColor: Colors.white,
                            hintText: 'House # 528 Block A st 2',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(0.5)),
                            prefixIcon: Icon(
                              Icons.home,
                              color: AppColor.primaryColor,
                              size: 28,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          cursorColor: AppColor.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 7.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 18.0),
                            fillColor: Colors.white,
                            hintText: 'Add Instruction > Upper portion etc',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(0.5)),
                            prefixIcon: Icon(
                              Icons.all_inbox_rounded,
                              color: AppColor.primaryColor,
                              size: 28,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          cursorColor: AppColor.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: Container(
                          width: 75,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.grey.shade200,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    // spreadRadius: 5,
                                    blurRadius: 3,
                                    offset: Offset(0, 4))
                              ]),
                          child: Center(
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Container(
                          width: 75,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.grey.shade200,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    // spreadRadius: 5,
                                    blurRadius: 3,
                                    offset: Offset(0, 4))
                              ]),
                          child: Center(
                            child: Text(
                              'Work',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Container(
                          width: 75,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.grey.shade200,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    // spreadRadius: 5,
                                    blurRadius: 3,
                                    offset: Offset(0, 4))
                              ]),
                          child: Center(
                            child: Text(
                              'Other',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: FlatButton(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                // spreadRadius: 5,
                                blurRadius: 4,
                                offset: Offset(0, 0),
                                spreadRadius: 2)
                          ]),
                      child: Center(
                        child: Text(
                          'SignUp',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingView()));
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _dropDown(List<String> items, String hint, IconData icon) {
    String _currentItemSelected;
    return Material(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 0.5, style: BorderStyle.solid, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 7.0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 0.5, style: BorderStyle.solid, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
                buttonColor: AppColor.primaryColor,
                alignedDropdown: true,
                child: new DropdownButton<String>(
                  items: items.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new MyText(
                        value,
                      ),
                    );
                  }).toList(),
                  onChanged: (String newValueSelected) {
                    setState(() {
                      _currentItemSelected = newValueSelected;
                    });
                  },
                  value: _currentItemSelected,
                  hint: Row(
                    children: [
                      Icon(
                        icon,
                        color: AppColor.primaryColor,
                      ),
                      HorizontalSpacing(width: 0.01),
                      Text(hint)
                    ],
                  ),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: AppColor.primaryColor,
                  ),
                )),
          ),
        ));
  }
}
// String selectCity ='';
