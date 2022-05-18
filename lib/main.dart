import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

double height = 150;
double width = 150;

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Belajar Layout"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
        color: Color.fromARGB(255, 255, 196, 87),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                // menampilkan gambar menggunakan class NetworkImage
                Image(
                  height: height,
                  width: width,
                  image: NetworkImage('https://i.pinimg.com/736x/30/c8/94/30c89438a78d6feb89df10290029b5de.jpg'),
                  fit: BoxFit.cover,
                ),
                // Menampilkan gambar secara lokal
                Image.asset(
                  'assets/images/KannaKamui.jpg',
                  height: height,
                  width: width,
                ),
                // Menampilkan Gambar Menggunakan ChacedNetworkImage
                CachedNetworkImage(
                  imageUrl: "https://i.pinimg.com/originals/45/11/52/45115254548a57ecb70fdf8357c9d83e.png",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Text("Koneksi Error"),
                  width: width,
                ),
              ],
            ),
            Column(
              children: [
                // menampilkan gambar menggunakan class NetworkImage
                Image(
                  height: height,
                  width: width,
                  image: NetworkImage('https://i.pinimg.com/originals/ab/3d/de/ab3ddea31cb59c4be8adc145b6ab271f.jpg'),
                  fit: BoxFit.cover,
                ),
                // Menampilkan gambar secara lokal
                Image.asset(
                  'assets/images/KannaAnime.jpg',
                  height: height,
                  width: width,
                ),
                // Menampilkan Gambar Menggunakan ChacedNetworkImage
                CachedNetworkImage(
                  imageUrl: "https://scontent-sin6-3.xx.fbcdn.net/v/t1.6435-9/131262160_207023241062280_7974972446048606255_n.jpg?_nc_cat=106&ccb=1-6&_nc_sid=8bfeb9&_nc_eui2=AeHHl7mFbeXVpNzouYHJqaL7d0Z2xdaE8cJ3RnbF1oTxwp98UC-JML9ok46oCt5lVqxhCGXYkjvQUPF_GDfvoRFR&_nc_ohc=mEETXgqA9xwAX9baaZL&_nc_ht=scontent-sin6-3.xx&oh=00_AT9lONqNvF0EcccSP3JeMiehO1LbKhjwe_035hJ1wJhYkg&oe=62A8BF95",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Text("Koneksi Error"),
                  width: width,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     title: "belajar Images",
//     home: BelajarGambarNetwork(),
//   ));
// }

// class BelajarGambarNetwork extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Belajar Image"),
//       ),
//       body: Center(
//         child: CachedNetworkImage(
//           imageUrl: "https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg",
//           placeholder: (context, url) => CircularProgressIndicator(),
//           errorWidget: (context, url, error) => Text("Koneksi Error"),
//           width: 200,
//         ),
//       ),
//     );
//   }
// }
