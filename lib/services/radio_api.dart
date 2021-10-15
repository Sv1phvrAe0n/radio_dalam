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
      RadioModel(
          name: 'Hard Rock FM',
          genre: 'Rock',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/18880.v11.png',
          uri: 'https://n13.radiojar.com/7csmg90fuqruv?rj-ttl=5&rj-tok=AAABfH48b3QA6JpPQEjUUtOOew'), // works https://stream.radiojar.com/7csmg90fuqruv.mp3?1587779552
      RadioModel(
          name: 'Prambors FM',
          genre: 'Rock, Pop, Hits',
          imageUrl: 'https://mypromotions.sfo2.cdn.digitaloceanspaces.com/radios/1965.jpg',
          uri: 'https://22253.live.streamtheworld.com/PRAMBORS_FM.mp3?dist=onlineradiobox'),
      RadioModel(
          name: 'iRadio Jakarta 89.6',
          genre: 'Pop Music',
          imageUrl: 'https://ru0-cdn.onlineradiobox.com/img/l/9/18959.v6.png',
          uri: 'https://stream.radiojar.com/4ywdgup3bnzuv'),
      RadioModel(
          name: 'Trax FM',
          genre: 'Pop, Hits',
          imageUrl: 'https://ru0-cdn.onlineradiobox.com/img/l/6/18806.v9.png',
          uri: 'https://n0c.radiojar.com/rrqf78p3bnzuv.mp3?1603859899=&rj-tok=AAABfH8XuNEAvqj8pDSU_sxOKw&rj-ttl=5'),
      RadioModel(
          name: 'Dengerin Musik',
          genre: 'Hits, Rock, Dance',
          imageUrl: 'https://ru0-cdn.onlineradiobox.com/img/l/8/18908.v10.png',
          uri: 'http://stream.denger.in:8888/dmi'),
      RadioModel(
          name: 'Bahana FM',
          genre: 'Pop',
          imageUrl: 'https://mypromotions.sfo2.cdn.digitaloceanspaces.com/radios/310.jpg',
          uri: 'http://stream.bahanafm.co.id:8100/;'),
      RadioModel(
          name: 'Indika FM',
          genre: 'Pop, RnB, Hits',
          imageUrl: 'https://ru0-cdn.onlineradiobox.com/img/l/7/18887.v6.png',
          uri: 'https://s2.radio.co/sf58a82d7d/listen'),
      RadioModel(
          name: 'NAGASWARA Pop',
          genre: 'Pop',
          imageUrl: 'https://ru0-cdn.onlineradiobox.com/img/l/9/75889.v5.png',
          uri: 'https://live.nagaswarafm.com:9100/stream'),
      //https://mypromotions.sfo2.cdn.digitaloceanspaces.com/radios/186.jpg
      RadioModel(
          name: 'ARDAN Radio',
          genre: 'Pop, Hits',
          imageUrl: 'https://ru0-cdn.onlineradiobox.com/img/l/7/18827.v7.png',
          uri: 'http://listento.ardanradio.com:1059/;'),
      RadioModel(
          name: 'Maestro Bandung',
          genre: 'Jazz, Christian',
          imageUrl: 'https://mytuner.global.ssl.fastly.net/media/tvos_radios/Nkq7gFmMGF.png',
          uri: 'http://maestro.skyline.net.id:10925/radio.maestro'), // works
      RadioModel(
          name: 'SKAI Radio',
          genre: 'Islam',
          imageUrl: 'https://mypromotions.sfo2.cdn.digitaloceanspaces.com/radios/253.jpg',
          uri: 'http://node-20.zeno.fm/k2nkm81yty8uv?rj-ttl=5&rj-tok=AAABfH4uSQwANEQGIB9Xxg8Qtw'), // works
      RadioModel(
          name: 'Silaturahim',
          genre: 'Islam',
          imageUrl: 'https://mytuner.global.ssl.fastly.net/media/tvos_radios/y5CyA6VbfB.jpeg',
          uri: 'http://ch1.radiosilaturahim.com:8000/stream'), //works
      RadioModel(
          name: 'Sonora Jakarta',
          genre: 'News, Music',
          imageUrl: 'https://pbs.twimg.com/profile_images/1410493292035252229/WJtGTERO_400x400.jpg',
          uri: 'http://103.226.246.245/kompas-sonorajakarta'), // NOPE
      // RadioModel(
      //     name: '',
      //     genre: '',
      //     imageUrl: '',
      //     uri: ''),
      // RadioModel(name: '', genre: '', imageUrl: '', uri: ''),
      // RadioModel(name: '', genre: '', imageUrl: '', uri: ''),
    ];
  }
}
