import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/hal1101204011.dart';

class hal1101200372 extends StatefulWidget {
  hal1101200372({super.key});

  @override
  State<hal1101200372> createState() => _hal1101200372State();
}

class _hal1101200372State extends State<hal1101200372> {
  String NIM_NOTEL = '';
  bool isInputValid = false;
  TextEditingController inputnim_7 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Aldira Fadillah Lazuardi - Page 1'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 1.0,
              // color: Colors.amber,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://anaktelkom.com/wp-content/uploads/2021/08/Logo-Telkom-University-900x1024.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 1.0,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: inputnim_7,
                      decoration: InputDecoration(
                          icon: Icon(Icons.key),
                          iconColor: isInputValid ? Colors.blue : Colors.red,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: isInputValid ? Colors.blue : Colors.red),
                          ),
                          hintText: 'Masukkan 7 digit pertama NIM'),
                      style: TextStyle(fontSize: 20.0),
                      onChanged: (value) {
                        if (inputnim_7.text.length == 7) {
                          isInputValid = true;
                        } else {
                          isInputValid = false;
                        }
                        ;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 1.0,
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.redAccent,
                        ),
                      ),
                      child: Text("Main Page"),
                      onPressed: () {
                        Navigator.pop(context, NIM_NOTEL);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          isInputValid ? Colors.blue : Colors.redAccent,
                        ),
                      ),
                      child: Text("Next Page"),
                      onPressed: () async {
                        String nim = inputnim_7.text;
                        if (nim == "1101200") {
                          isInputValid = true;
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondPage(
                                nim_7: nim,
                              ),
                            ),
                          );
                          setState(() {
                            NIM_NOTEL = result ?? '';
                          });
                        } else {}
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.redAccent,
              ),
              child: Center(
                child: Text(
                  NIM_NOTEL,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//This Second Page
class SecondPage extends StatefulWidget {
  final String nim_7;
  SecondPage({required this.nim_7});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isInputValidE = false;
  bool isInputValidN = false;
  bool isInputValidn = false;
  TextEditingController email = TextEditingController();
  TextEditingController notel = TextEditingController();
  TextEditingController nim_8 = TextEditingController();
  String nim = '';
  String NIM_NOTEL = '';

  @override
  void initState() {
    super.initState();
    nim = widget.nim_7;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aldira Fadillah Lazuardi - Page 2'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
                decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    iconColor: isInputValidE ? Colors.blue : Colors.red,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: isInputValidE ? Colors.blue : Colors.red),
                    ),
                    hintText: 'Masukkan email anda'),
                style: TextStyle(fontSize: 20.0),
                onChanged: (value) {
                  if (email.text.contains('@')) {
                    isInputValidE = true;
                  } else {
                    isInputValidE = false;
                  }
                  ;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                keyboardType: TextInputType.phone,
                controller: notel,
                decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    iconColor: isInputValidN ? Colors.blue : Colors.red,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: isInputValidN ? Colors.blue : Colors.red),
                    ),
                    hintText: 'Masukkan nomor telepon'),
                style: TextStyle(fontSize: 20.0),
                onChanged: (value) {
                  if (notel.text.length == 11 || notel.text.length == 12) {
                    isInputValidN = true;
                  } else {
                    isInputValidN = false;
                  }
                  ;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: nim_8,
                decoration: InputDecoration(
                    icon: Icon(Icons.key),
                    iconColor: isInputValidn ? Colors.blue : Colors.red,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: isInputValidn ? Colors.blue : Colors.red),
                    ),
                    hintText: 'Masukkan digit ke-8 NIM'),
                style: TextStyle(fontSize: 20.0),
                onChanged: (value) {
                  if (nim_8.text.length == 1) {
                    isInputValidn = true;
                  } else {
                    isInputValidn = false;
                  }
                  ;
                },
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.redAccent,
                      ),
                    ),
                    child: Text('Previous Page'),
                    onPressed: () {
                      Navigator.pop(
                        context,
                        NIM_NOTEL,
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        isInputValidn ? Colors.blue : Colors.redAccent,
                      ),
                    ),
                    child: Text('Next Page'),
                    onPressed: () async {
                      String digit8 = nim_8.text;
                      if (digit8 == "3") {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThirdPage(
                              emailpush: email.text,
                              notelpush: notel.text,
                              nim8push: widget.nim_7 + digit8,
                            ),
                          ),
                        );
                        setState(() {
                          NIM_NOTEL = result ?? '';
                        });
                      } else {}
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.redAccent,
            ),
            child: Center(
              child: Text(
                NIM_NOTEL,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class ThirdPage extends StatefulWidget {
  final String emailpush;
  final String notelpush;
  final String nim8push;

  ThirdPage(
      {required this.emailpush,
      required this.notelpush,
      required this.nim8push});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController nimLAST = TextEditingController();
  bool isInputValidnn = false;
  String NIM_NOTEL = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Aldira Fadillah Lazuardi - Page 3'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 200,
                backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/ajur-ajur/Embed-Image/main/assets/1.png',
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                '${widget.emailpush}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Text(
                '${widget.notelpush}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: nimLAST,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan 2 digit terakhir NIM',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color: isInputValidnn ? Colors.blue : Colors.redAccent),
                  ),
                ),
                onChanged: (value) {
                  if (nimLAST.text.length == 2) {
                    isInputValidnn = true;
                  } else {
                    isInputValidnn = false;
                  }
                },
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.redAccent,
                            ),
                          ),
                          child: Text('Previous Page'),
                          onPressed: () {
                            Navigator.pop(context, NIM_NOTEL);
                          }),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            isInputValidnn ? Colors.blue : Colors.redAccent,
                          ),
                        ),
                        child: Text('Next Page'),
                        onPressed: () async {
                          if (nimLAST.text == '72') {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FourthPage(
                                  EMAIL_INDEX: widget.emailpush,
                                  NOTEL_INDEX: widget.notelpush,
                                  NIM_INDEX: widget.nim8push + nimLAST.text,
                                ),
                              ),
                            );
                            setState(() {
                              NIM_NOTEL = result ?? '';
                            });
                          } else {}
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: Text(
                    NIM_NOTEL,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FourthPage extends StatefulWidget {
  final String EMAIL_INDEX;
  final String NOTEL_INDEX;
  final String NIM_INDEX;

  FourthPage(
      {required this.EMAIL_INDEX,
      required this.NOTEL_INDEX,
      required this.NIM_INDEX});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    List<String> nimList = widget.NIM_INDEX.split('');
    List<String> phoneList = widget.NOTEL_INDEX.split('');
    String NIM_NOTEL = widget.NIM_INDEX + " / " + widget.NOTEL_INDEX;
    return Scaffold(
      appBar: AppBar(
        title: Text('Aldira Fadillah Lazuardi - Page 5'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '${widget.NIM_INDEX} / ${widget.NOTEL_INDEX}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: nimList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Color.fromRGBO(Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256), 1),
                  child: Center(
                    child: Text(nimList[index]),
                  ),
                );
              },
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: phoneList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Color.fromRGBO(Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256), 1),
                  child: Center(
                    child: Text(phoneList[index]),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Previous Page'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                Navigator.pop(context, NIM_NOTEL);
              },
            ),
          ],
        ),
      ),
    );
  }
}
