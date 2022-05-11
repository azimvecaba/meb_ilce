import "package:flutter/material.dart";
import "package:flutter_meb_ilce_deneme/image_widget.dart";
import "package:flutter_meb_ilce_deneme/okullar_ana_sayfasi.dart";
import "package:flutter_meb_ilce_deneme/yonetici_ana_sayfasi.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login MEM",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MemLoginInput(),
    );
  }
}

class MemLoginInput extends StatelessWidget {
  const MemLoginInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    dynamic username;
    // ignore: unused_local_variable
    dynamic password;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 60,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.redAccent,
              Colors.deepPurpleAccent,
            ], begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          ),
        ),
        elevation: 10,
        titleSpacing: 20,
        title: const Text(
          'Mobil Veri Erişim Merkezi',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      //DIŞ GÖVDE - ARKA FON
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white70,
              Colors.purple.shade100,
              Colors.blue.shade200
            ],
          ),
        ),
        //DIŞ GÖVDE - ARKA FON
        child: Column(
          children: [
            //IMAGES
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const Images_meb()]),
            ),
            //IMAGES
            //UYARI METNİ
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 25.0),
              child: Row(
                children: const [
                  Text(
                    'Lütfen Kullanıcı adı ve Şifrenizi Giriniz.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            //UYARI METNİ
            //ARA BOŞLUK
            const SizedBox(
              height: 20.0,
            ),
            //ARABOŞLUK
            //LOGİN - FORM (KULLANICI ADI VE ŞİFRE)
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //KULLANICI ADI
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.purple,
                              style: BorderStyle.solid,
                              width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF82B1FF), width: 2),
                        ),
                        labelText: "Kullanıcı Adı:",
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(),
                      ),
                      //VALİDATÖR
                      validator: (kuldeger) {
                        if (kuldeger == null || kuldeger.isEmpty) {
                          return 'Kullanıcı Adı Giriniz';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        username = value;
                      },
                    ),
                    //KULLANICI ADI
                    //ARA BOŞLUK
                    const SizedBox(height: 10.0),
                    //ARA BOŞLUK
                    //ŞİFRE
                    TextFormField(
                      autovalidateMode: AutovalidateMode.disabled,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.purple,
                              style: BorderStyle.solid,
                              width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF82B1FF), width: 2),
                        ),
                        labelText: "Şifre:",
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(),
                      ),
                      validator: (sifredeger) {
                        if (sifredeger == null || sifredeger.isEmpty) {
                          return 'Lütfen Şifrenizi Giriniz';
                        }
                        return null;
                      },
                      onSaved: (sifrevalue) {
                        password = sifrevalue;
                      },
                    ),
                    //ŞİFRE
                    //ARA BOŞLUK
                    const SizedBox(
                      height: 15,
                    ),
                    //ARABOŞLUK
                    //GİRİŞ BUTTONU (METOD SINIF İÇİ)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 130,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();

                                if (username == 'yonetici' &&
                                    password == 'yonetici') {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const YoneticiAnaSayfasi(),
                                    ),
                                  );
                                } else if (username == 'okul' &&
                                    password == 'okul') {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const OkullarAnaSayfasi(),
                                    ),
                                  );
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const AlertDialog(
                                      title: Text(
                                        'Hatalı Giriş',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: Text(
                                        'Lütfen Kullanıcı Adınızı ve Şifrenizi Kontrol Ediniz.',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                              ),
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                    color: Color(0xFFBA68C8), width: 2),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFC62828),
                              ),
                            ),
                            child: const Text(
                              'Giriş',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //GİRİŞ BUTTONU (METOD SINIF İÇİ)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
