import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:radio/models/radio_model.dart';

class RadioApiProvider {
  List<RadioModel> getRadio() {
    //   var uri = Uri.https('radio-world-50-000-radios-stations.p.rapidapi.com',
    //       '/v1/radios/searchByCountry', {"query": "id"});
    //
    //   http.Response response = await http.get(uri, headers: {
    //     "x-rapidapi-host": "radio-world-50-000-radios-stations.p.rapidapi.com",
    //     "x-rapidapi-key": "382ea51069msh6754a1b6b23a558p18ab0bjsna4c8401af17c",
    //     "useQueryString": "true"
    //   });
    //
    //   if (response.statusCode == 200) {
    //     Map<String, dynamic> radiosData = jsonDecode(response.body);
    //     List<dynamic> radios = radiosData['radios'];
    //     print(response.statusCode);
    //     print(radiosData);
    //     return radios.map((e) => RadioModel.fromJson(e)).toList();
    //   }
    //   else {
    //     print('code is ${response.statusCode}');
    //     return [];
    //   }
    //
    //
    // }

    return [
      // RadioModel(
      //     name: '',
      //     genre: '',
      //     country: '',
      //     imageUrl: '',
      //     uri: ''),
      RadioModel(
          name: 'Metal On: The Brutal',
          genre: 'Black, Death',
          country: 'Portugal',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/19793.v6.png',
          uri: 'https://radiometalon.com/radio/8010/radio.mp3'),
      RadioModel(
          name: 'Metal On: The Thrasher',
          genre: 'Thrash',
          country: 'Portugal',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/19793.v6.png',
          uri: 'https://radiometalon.com/radio/8020/radio.mp3'),
      RadioModel(
          name: 'Moshhead Black Metal',
          genre: 'Black',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/2/54692.v3.png',
          uri: 'https://moshhead-blackmetal.stream.laut.fm/moshhead-blackmetal'),
      RadioModel(
          name: 'Metal Tavern',
          genre: 'Black, Death, Prog',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/5/74685.v8.png',
          uri: 'http://192.99.14.191:8051/stream'),
      RadioModel(
          name: 'Northern Metal Extreme',
          genre: 'Black, Death, Norse',
          country: 'Sweden',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/106698.v3.png',
          uri: 'https://s2.free-shoutcast.com/stream/18092'),
      RadioModel(
          name: 'Northern Metal',
          genre: 'Heavy, Power',
          country: 'Sweden',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/106698.v3.png',
          uri: 'https://s3.free-shoutcast.com/stream/18578'),
      RadioModel(
          name: 'Metal Warriors Peru',
          genre: 'Black, Heavy, Power',
          country: 'Peru',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/82174.v23.png',
          uri: 'https://www.metallerium.com:8124/stream'),
      RadioModel(
          name: 'GARTA',
          genre: 'Death, Goth, Thrash',
          country: 'Ukraine',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/5/80865.v8.png',
          uri: 'https://rockradioua.online:8447/kuznya128'),
      RadioModel(
          name: 'Metal Knight',
          genre: 'Heavy, Gothic, Rock',
          country: 'Spain',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/63241.v4.png',
          uri: 'https://streamingv2.shoutcast.com/-Metalknightradio-'),
      RadioModel(
          name: 'Schwarzeseele',
          genre: 'Death, Gothic, Power',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/79148.v3.png',
          uri: 'https://stream.laut.fm/radio-schwarzeseele'),
      RadioModel(
          name: 'Motorbreath',
          genre: 'Black, Core, Thrash',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/44983.v2.png',
          uri: 'https://motorbreath.stream.laut.fm/motorbreath'),
      RadioModel(
          name: 'Grindoteka',
          genre: 'Black, Death, Doom',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/70053.v13.png',
          uri: 'http://194.67.200.84:8000/grindoteka.mp3'),
      RadioModel(
          name: 'Extasy',
          genre: 'Death, Power, Symphonic',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/94989.v6.png',
          uri: 'https://onrb.play.extasy.es/'),
    ];
  }
}
