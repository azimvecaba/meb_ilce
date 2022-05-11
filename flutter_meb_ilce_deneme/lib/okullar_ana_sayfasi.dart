import 'package:flutter/material.dart';

class OkullarAnaSayfasi extends StatelessWidget {
  const OkullarAnaSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Büyükçekmece MEM',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const SchoolPage(),
    );
  }
}

class SchoolPage extends StatelessWidget {
  const SchoolPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        toolbarHeight: 60,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        //backgroundColor: Colors.red[900],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.redAccent,
              Colors.deepPurpleAccent,
            ], begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          ),
        ),
        elevation: 15,
        titleSpacing: 0,
        title: const Text(
          'Mobil Veri Erişim Merkezi',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(right: 130.0),
        child: Drawer(
          elevation: 1,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'assets/images/meb_transparan.png',
                    ),
                  ),
                  gradient: LinearGradient(colors: [
                    Color(0xFFCE93d8),
                    Color(0xFFEF9a9a),
                  ], begin: Alignment.bottomRight, end: Alignment.bottomLeft),
                ),
                child: null,
              ),
              ListTile(
                tileColor: Color(0xFFFF8A80),
                leading: Icon(Icons.menu_open_sharp),
                title: Text(
                  'Menü',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Color(0xFFCE93d8),
                leading: Icon(Icons.storage_rounded),
                autofocus: false,
                title: Text(
                  'Veri Girişi',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Color(0xFFFF8A80),
                leading: Icon(Icons.phone_android),
                title: Text('Telefon Rehberi'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Color(0xFFCE93d8),
                leading: Icon(Icons.calendar_today_outlined),
                title: Text(
                  'Ajanda',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Color(0xFFFF8A80),
                leading: Icon(Icons.analytics_outlined),
                title: Text('Form Cevap Portalı'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Color(0xFFCE93d8),
                leading: Icon(Icons.person),
                title: Text(
                  'Mebbis/DYS Portalı',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              ListTile(
                tileColor: Colors.red,
                leading: Icon(
                  Icons.exit_to_app_rounded,
                  size: 50,
                ),
                title: Text(
                  'Çıkış Yap',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      //APPBAR
      //DIŞ GÖVDE - ARKA FON
      body: Container(
        //Fon Dekorasyonu
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
        //Fon Dekorasyonu
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            // GÖVDE COLUMN'I
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                                left: 16, right: 18, top: 18, bottom: 18),
                            decoration: const BoxDecoration(
                              color: Color(0xFF0001FC),
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/meb_transparan.png',
                                  color: Colors.white,
                                  cacheWidth: 110,
                                  cacheHeight: 110,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Büyükçekmece ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 21,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'İlçe Milli Eğitim Müdürlüğü',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Mobil Veri Erişim Merkezi',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Veri Girişi Card
                        const SizedBox(
                          height: 32,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue.shade100,
                          shadowColor: Colors.black,
                          elevation: 8,
                          child: const ListTile(
                            leading: CircleAvatar(child: Icon(Icons.add)),
                            title: Text(
                              'Veri Girişi',
                              style: TextStyle(fontSize: 17),
                            ),
                            subtitle: Text('Veri Giriş Alanı'),
                            trailing: Icon(Icons.add_chart),
                          ),
                        ),
                        //Veri Girişi Card (bottom)
                        const SizedBox(
                          height: 15,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue.shade100,
                          shadowColor: Colors.black,
                          elevation: 8,
                          child: const ListTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.phone_android),
                            ),
                            title: Text(
                              'Telefon Rehberi',
                              style: TextStyle(fontSize: 17),
                            ),
                            subtitle: Text('Okul Müdürleri İletişim'),
                            trailing: Icon(Icons.phone),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue.shade100,
                          shadowColor: Colors.black,
                          elevation: 8,
                          child: const ListTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.calendar_today),
                            ),
                            title: Text(
                              'Ajanda',
                              style: TextStyle(fontSize: 17),
                            ),
                            subtitle: Text('Toplantı Bildirim'),
                            trailing: Icon(Icons.web_rounded),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue.shade100,
                          shadowColor: Colors.black,
                          elevation: 8,
                          child: const ListTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.format_indent_increase),
                            ),
                            title: Text(
                              'Form Cevap Portalı',
                              style: TextStyle(fontSize: 17),
                            ),
                            subtitle: Text('Anket ve Formları Cevaplama'),
                            trailing: Icon(Icons.view_list),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue.shade100,
                          shadowColor: Colors.black,
                          elevation: 8,
                          child: const ListTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.person),
                            ),
                            title: Text(
                              'Mebbis/DYS Portalı',
                              style: TextStyle(fontSize: 17),
                            ),
                            subtitle: Text('Bağlantı'),
                            trailing: Icon(Icons.link),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue.shade100,
                          shadowColor: Colors.black,
                          elevation: 8,
                          child: const ListTile(
                            leading: CircleAvatar(child: Icon(Icons.school)),
                            title: Text(
                              'Bakanlık Portalı',
                              style: TextStyle(fontSize: 17),
                            ),
                            subtitle: Text('Bağlantı'),
                            trailing: Icon(Icons.link),
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // BANNER CARDLAR (Bottom)
          ),
        ),
        //DIŞ GÖVDE - ARKA FON (Bottom)
      ),
    );
  }
}
