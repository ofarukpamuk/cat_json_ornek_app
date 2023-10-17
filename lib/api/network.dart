// ignore_for_file: public_member_api_docs, sort_constructors_first
// http bağlantısını sağlayabilmek için paket kullanmamız lazım
// json yapılarını oluşturabilmek için paket kullanıyoruz
// jsonu darta otomatik olarak dönüştürmek için de build_runner
import 'dart:html';

import 'package:http/http.dart';

class Network {
  final Uri url;
  Network({
    required this.url,
  }); 
  Future getData() async {
    // veri getir dedigimiz fonksiyon netten veri alacağı ve uzun süren bir işlem oldugu için future kullandık
    print("bağlanti sağlandi; $url");
    Response response =
        await get(url); // bağlantıyı kontrol ediyor ve cevap veriyor
    if (response.statusCode == 200) {
      // bağlanıyor ise bağlantı kodu 200 ise yani
      return response.body;
    } else {
      print(response.statusCode);
    }
  }
}
