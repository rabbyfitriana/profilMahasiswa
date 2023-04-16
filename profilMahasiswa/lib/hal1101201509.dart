import 'dart:math';
import 'package:flutter/material.dart';

class hal1101201509 extends StatefulWidget {
  // final String message;
  hal1101201509({super.key});

  @override
  State<hal1101201509> createState() => _hal1101201509State();
}

class _hal1101201509State extends State<hal1101201509> {
  final TextEditingController _textEditingController = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aldra Kasyfil Aziz/Page-1'),
        backgroundColor: Color.fromARGB(255, 39, 59, 105),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  // color: Colors.red.withOpacity(0.1),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://anaktelkom.com/wp-content/uploads/2021/08/Logo-Telkom-University-900x1024.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Ketikkan 7 digit pertama NIM anda',
                      ),
                    ),
                    // Text('$message'),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 196, 253, 236)),
                              child: Text(
                                'Main Page',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.pop(
                                    context, _textEditingController.text);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 196, 253, 236)),
                              child: Text(
                                'Next Page',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () async {
                                if (_textEditingController.text ==
                                    1101201.toString()) {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101201509_2(
                                          pesan1: _textEditingController.text),
                                    ),
                                  );
                                  setState(() {
                                    _message = result ?? '';
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 390.0,
                  color: Color.fromARGB(255, 26, 42, 82),
                  child: Center(
                      child: Text(
                    _message,
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class hal1101201509_2 extends StatefulWidget {
  // hal1101201509_2({super.key,required this.pesan1});
  String pesan1 = '';
  hal1101201509_2({super.key, required this.pesan1});

  @override
  _hal1101201509_2State createState() => _hal1101201509_2State();
}

class _hal1101201509_2State extends State<hal1101201509_2> {
  String NIM7 = '';
  TextEditingController _textEditingController0 = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aldra Kasyfil Aziz/Page-2'),
        backgroundColor: Color.fromARGB(255, 39, 59, 105),
      ),
      body: ListView(
        children: [
          //Silakan lanjutkan........................
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController0,
                      decoration: InputDecoration(
                        icon: Icon(Icons.mail),
                        hintText: 'Ketikkan Alamat Email Anda',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController1,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone_android),
                        hintText: 'Ketikkan No handphone Anda',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController2,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Ketikkan digit ke-8 NIM Anda',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 196, 253, 236)),
                              child: Text(
                                'Previous Page',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.pop(context, _message);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 196, 253, 236)),
                              child: Text(
                                'Next Page',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () async {
                                if (_textEditingController2.text ==
                                    5.toString()) {
                                  String NIM7 = '${widget.pesan1}' +
                                      _textEditingController2.text;
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101201509_3(
                                        pesan1: NIM7,
                                        pesan2: _textEditingController0.text,
                                        pesan3: _textEditingController1.text,
                                      ),
                                    ),
                                  );
                                  setState(() {
                                    _message = result ?? '';
                                  });
                                  ;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 390.0,
                  color: Color.fromARGB(255, 26, 42, 82),
                  child: Center(
                      child: Text(
                    _message,
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class hal1101201509_3 extends StatefulWidget {
  String pesan1 = '';
  String pesan2 = '';
  String pesan3 = '';
  hal1101201509_3(
      {super.key,
      required this.pesan1,
      required this.pesan2,
      required this.pesan3});

  @override
  _hal1101201509_3State createState() => _hal1101201509_3State();
}

class _hal1101201509_3State extends State<hal1101201509_3> {
  String NIM10 = '';
  String TLP = '';
  TextEditingController _textEditingController3 = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aldra Kasyfil Aziz/Page-3'),
        backgroundColor: Color.fromARGB(255, 39, 59, 105),
      ),
      body: ListView(
        children: [
          //Silakan lanjutkan........................
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('lib/images/aldra.jpg'),
                      radius: 100,
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      '${widget.pesan2}',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      '${widget.pesan3}',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    TextField(
                      controller: _textEditingController3,
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        hintText: 'Masukkan digit ke-9 dan ke-10 NIM anda',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 196, 253, 236)),
                              child: Text(
                                'Previous Page',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.pop(context, _message);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 196, 253, 236)),
                              child: Text(
                                'Next Page',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () async {
                                if (_textEditingController3.text == '09') {
                                  String NIM10 = '${widget.pesan1}' +
                                      _textEditingController3.text;
                                  String TLP = '${widget.pesan3}';
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => hal1101201509_4(
                                        pesan1: NIM10,
                                        pesan2: TLP,
                                        pesan3: _textEditingController3.text,
                                      ),
                                    ),
                                  );
                                  setState(() {
                                    _message = result ?? '';
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("NIM/No. Telp."),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0), //or 15.0
                child: Container(
                  height: 70.0,
                  width: 390.0,
                  color: Color.fromARGB(255, 26, 42, 82),
                  child: Center(
                      child: Text(
                    _message,
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class hal1101201509_4 extends StatefulWidget {
  // hal1101201509_2({super.key,required this.pesan1});
  String pesan1 = '';
  String pesan2 = '';
  String pesan3 = '';
  hal1101201509_4(
      {super.key,
      required this.pesan1,
      required this.pesan2,
      required this.pesan3});

  @override
  _hal1101201509_4State createState() => _hal1101201509_4State();
}

class _hal1101201509_4State extends State<hal1101201509_4> {
  @override
  Widget build(BuildContext context) {
    String allPesan = '${widget.pesan1}/${widget.pesan2}';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aldra Kasyfil Aziz/Page-4'),
        backgroundColor: Color.fromARGB(255, 39, 59, 105),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    '${widget.pesan1} / ${widget.pesan2}',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 196, 253, 236)),
                          child: Text(
                            'Previous Page',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.pop(context, allPesan);
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                children: [
                  GridView.count(
                    crossAxisCount: 5,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(0),
                    children: List.generate(allPesan.length, (index) {
                      return Container(
                        height: 1,
                        child: Card(
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          child: Center(
                            child: Text(
                              allPesan[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
