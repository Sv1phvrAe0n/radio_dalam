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
      //     imageUrl: 'http:',
      //     uri: ''),
      RadioModel(
          name: 'NightBreed',
          genre: 'Darkwave, Gothic, Industrial',
          country: 'UK',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/38569.v3.png',
          uri: 'http://199.101.51.168:8010/;stream.mp3'),
      RadioModel(
          name: 'NDH FM',
          genre: 'Industrial, NDH',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/92144.v9.png',
          uri: 'https://stream.ndhradio.online:8005/stream'),
      RadioModel(
          name: 'Dark Bites',
          genre: 'Electro, Gothic, Industrial',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/44021.v1.png',
          uri: 'https://dark-bites.stream.laut.fm/dark-bites'),
      RadioModel(
          name: 'Sanctuary',
          genre: 'Darkwave, Gothic, Industrial',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/5/33675.v3.png',
          uri: 'https://ssl.shoutcaststreaming.us:8090/stream'),
      RadioModel(
          name: 'Decennial Gothica',
          genre: 'Folk, Gothic, Norse',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/6/101026.v1.png',
          uri: 'http://23.29.71.154:8226/stream'),
      RadioModel(
          name: 'Violent Forces: 80s Thrash',
          genre: 'Thrash',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/2/104452.v1.png',
          uri: 'https://www.tuneintoradio1.com/radio/8010/radio.mp3'),
      RadioModel(
          name: 'Violent Forces',
          genre: 'Heavy, Thrash',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/7/36687.v3.png',
          uri: 'https://www.tuneintoradio1.com/radio/8000/radio.mp3'),
      RadioModel(
          name: 'Cathedral XIII',
          genre: 'Darkwave, Gothic',
          country: 'USA',
          imageUrl: 'https://scontent.fyto3-1.fna.fbcdn.net/v/t1.18169-1/cp0/p50x50/260166_246665938681872_8292984_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=1NpTJgqXVgIAX-MCDWw&_nc_ht=scontent.fyto3-1.fna&edm=ALdPpPkEAAAA&oh=9636f4f5a83844229b4569fba3441000&oe=61B88DBD',
          uri: 'http://listen.shoutcast.com/cathedralxiii'),
      RadioModel(
          name: 'Ultra Dark',
          genre: 'Alternative, Gothic, Industrial',
          country: 'Germany',
          imageUrl: 'http://assets.laut.fm/d669f67ff3908427305eaf1b8736058c?t=_120x120',
          uri: 'http://the-radio.ru/radio/ultra-dark-r940'),
      RadioModel(
          name: 'True Black Metal',
          genre: 'Black',
          country: 'Ukraine',
          imageUrl: 'http://trueblackmetalradio.com/content/images/tbmr.png',
          uri: 'http://trueblackmetalradio.com:666/radio'),
      RadioModel(
          name: 'Power bacK',
          genre: 'Black',
          country: 'USA',
          imageUrl: 'https://www.powerbackproductions.com/images/xPower-bacL-Radio-cover-picture.png.pagespeed.ic.M0uhDvP9OY.webp',
          uri: 'https://usa6.fastcast4u.com/proxy/tmuldbnz2?mp=/1'),
      RadioModel(
          name: 'Death.FM',
          genre: 'Black',
          country: 'USA',
          imageUrl: 'http://death.fm/images/logos/dfm_logo-200x200.png',
          uri: 'http://the-radio.ru/radio/death-r851'),
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
          genre: 'Heavy, Power, Speed',
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
          name: 'Garta',
          genre: 'Death, Gothic, Thrash',
          country: 'Ukraine',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/5/80865.v8.png',
          uri: 'https://rockradioua.online:8447/kuznya128'),
      RadioModel(
          name: 'Metal Knight',
          genre: 'Heavy, Gothic',
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
      RadioModel(
          name: 'Metal Pandemia',
          genre: 'Death, Heavy',
          country: 'Chile',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/87061.v7.png',
          uri: 'https://stream.zeno.fm/5ynnpbgt5tzuv'),
      RadioModel(
          name: 'Metal Maximum',
          genre: 'Heavy, Power, Prog',
          country: 'Italy',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/70691.v19.png',
          uri: 'https://s11.ssl-stream.com/ssl/metalmaximum?mp=/stream'),
      RadioModel(
          name: 'Core Mix',
          genre: 'Core, Death',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/44539.v1.png',
          uri: 'https://core-mix.stream.laut.fm/core-mix'),
      RadioModel(
          name: 'Metalhead',
          genre: 'Death, Heavy',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/logo/8/107528.png',
          uri: 'https://stream.laut.fm/metalhead'),
      RadioModel(
          name: 'Star FM From Hell',
          genre: 'Death',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/810.v7.png',
          uri: 'https://streams.starfm.de/from_hell.mp3'),
      RadioModel(
          name: 'Sonido Oscuro',
          genre: 'Power, Speed',
          country: 'Bolivia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/75284.v10.png',
          uri: 'https://stream.zeno.fm/1q7md65ubseuv'),
      RadioModel(
          name: 'Thrashking',
          genre: 'Thrash',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/7/57177.v3.png',
          uri: 'https://thrashking.stream.laut.fm/thrashking'),
      RadioModel(
          name: 'Diabolus',
          genre: 'Death, Power, Symphonic',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/49920.v1.png',
          uri: 'http://stream.radio-diabolus.eu:9090/;.'),
      RadioModel(
          name: 'Radio Angelow',
          genre: 'Folk, Power, Symphonic',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/51898.v12.png',
          uri: 'http://channel.angelsradio.ru:9000/angels'),
      RadioModel(
          name: 'DarkClubRadio',
          genre: 'Alternative, Gothic',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/7/42607.v2.png',
          uri: 'https://darkclubradio.stream.laut.fm/darkclubradio'),
      RadioModel(
          name: 'ON Gothic',
          genre: 'Darkwave, Gothic, Electro',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/75198.v2.png',
          uri: 'https://0n-gothic.radionetz.de/0n-gothic.mp3'),
      RadioModel(
          name: 'Dark Metal',
          genre: 'Alternative, Gothic, Heavy',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/54101.v4.png',
          uri: 'https://stream.laut.fm/dark-metal-radio'),
      RadioModel(
          name: 'Dark Lupu',
          genre: 'Gothic, Industrial',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/6/52376.v4.png',
          uri: 'https://darklupu.stream.laut.fm/darklupu'),
      RadioModel(
          name: 'Hazzard of Darkness',
          genre: 'Alternative, Gothic, Industrial',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/42873.v1.png',
          uri: 'http://hazzardstream.de:7777/stream/1/;202686764294902stream.nsv'),
      RadioModel(
          name: 'Dark Zero',
          genre: 'Gothic, Industrial',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/76589.v18.png',
          uri: 'https://stream.laut.fm/darkzeroradio'),
      RadioModel(
          name: 'DarkFire',
          genre: 'Gothic',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/7/50387.v5.png',
          uri: 'https://s9.streamcaster.eu:8346/stream.mp3'),
      RadioModel(
          name: 'Oboz',
          genre: 'Gothic',
          country: 'Ukraine',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/41188.v6.png',
          uri: 'https://radio-stream-2.obozrevatel.com/Gothic128.mp3'),
      RadioModel(
          name: 'Allzic Radio Gothique',
          genre: 'Gothic, Symphonic',
          country: 'France',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/5363.v2.png',
          uri: 'https://allzic27.ice.infomaniak.ch/allzic27.mp3'),
      RadioModel(
          name: 'Dark Romance',
          genre: 'Gothic, Synth',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/7/44047.v1.png',
          uri: 'https://romance.stream.laut.fm/romance'),
      RadioModel(
          name: 'Dunkle Welle',
          genre: 'Gothic, Synth',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/42830.v2.png',
          uri: 'https://saurus.streampanel.net/rjmvggsr?mp=/stream'),
      RadioModel(
          name: 'Castle Party',
          genre: 'Gothic',
          country: 'Poland',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/2/1622.v1.png',
          uri: 'http://radio.alternation.pl:616/;stream.mp3'),
      RadioModel(
          name: 'Dark Sound United',
          genre: 'Darkwave, Gothic, Industrial',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/52374.v3.png',
          uri: 'https://dark-sound-united.stream.laut.fm/dark-sound-united'),
      RadioModel(
          name: 'Snake Dance',
          genre: 'Gothic, Industrial, Synth',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/7/85567.v2.png',
          uri: 'https://snakedance.stream.laut.fm/snakedance'),
      RadioModel(
          name: 'Narrenwut',
          genre: 'Folk, Gothic, Instrumental',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/6/33036.v1.png',
          uri: 'https://mittelalter-net.stream.laut.fm/mittelalter-net'),
      RadioModel(
          name: 'Dark Mythos',
          genre: 'Electro, Gothic',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/44403.v1.png',
          uri: 'https://dark-mythos.stream.laut.fm/dark-mythos'),
      RadioModel(
          name: 'DarkItalia',
          genre: 'Electro, Gothic',
          country: 'Italy',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/86519.v18.png',
          uri: 'https://darkitalia.radioca.st/autodj'),
      RadioModel(
          name: 'Dark Pulse',
          genre: 'Electro, Gothic, Synth',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/35171.v1.png',
          uri: 'https://radiodarkpulse.stream.laut.fm/radiodarkpulse'),
      RadioModel(
          name: 'Schwarze Szene',
          genre: 'Electro, Gothic, Synth',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/35498.v1.png',
          uri: 'https://schwarzeszene.stream.laut.fm/schwarzeszene'),
      RadioModel(
          name: 'Moshhead Gothic',
          genre: 'Gothic',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/54693.v3.png',
          uri: 'https://moshhead-gothic.stream.laut.fm/moshhead-gothic'),
      RadioModel(
          name: 'Hammer',
          genre: 'Death, Gothic, Thrash',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/59144.v3.png',
          uri: 'https://hammer.stream.laut.fm/hammer'),
      RadioModel(
          name: 'Schattenreich',
          genre: 'Electro, Gothic',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/44504.v1.png',
          uri: 'https://schattenreich.stream.laut.fm/schattenreich'),
      RadioModel(
          name: 'Darkstar',
          genre: 'Gothic, Instrumental',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/2/34462.v1.png',
          uri: 'https://radio-darkstar.stream.laut.fm/radio-darkstar'),
      RadioModel(
          name: 'Dark Sound',
          genre: 'Electro, Gothic, Synth',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/78823.v5.png',
          uri: 'https://stream.laut.fm/darksoundradio'),
      RadioModel(
          name: 'Grindoteka Sludge',
          genre: 'Doom, Sludge',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/89830.v2.png',
          uri: 'http://194.67.200.84:8000/sludge.mp3'),
      RadioModel(
          name: 'BEATDOWNX',
          genre: 'Core, Thrash',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/44099.v1.png',
          uri: 'https://beatdownx.stream.laut.fm/beatdownx'),
      RadioModel(
          name: 'My Core',
          genre: 'Core',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/54888.v3.png',
          uri: 'https://mycore.stream.laut.fm/mycore'),
      RadioModel(
          name: 'La Pajarraca',
          genre: 'Death',
          country: 'Mexico',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/51269.v4.png',
          uri: 'http://67.20.61.70:8281/;stream.nsv'),
      RadioModel(
          name: 'Tu Punto Power Metal',
          genre: 'Power',
          country: 'Mexico',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/74211.v5.png',
          uri: 'https://stream.zeno.fm/1gb0ym3yg3quv'),
      RadioModel(
          name: 'PPN Radio',
          genre: 'Power, Prog',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/10071.v2.png',
          uri: 'https://streamingv2.shoutcast.com/PPNR02'),
      RadioModel(
          name: 'Prog Palace',
          genre: 'Power, Prog',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/15678.v11.png',
          uri: 'https://cheetah.streemlion.com:4775/stream'),
      RadioModel(
          name: 'Neslaboe Radio',
          genre: 'Alternative, Power, Nu',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/7/96007.v2.png',
          uri: 'http://stream.neslaboe.ru:9000/neslaboe'),
      RadioModel(
          name: 'Grindoteka Extreme',
          genre: 'Black',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/89810.v2.png',
          uri: 'http://194.67.200.84:8000/extreme.mp3'),
      RadioModel(
          name: 'Ad_Infinitum',
          genre: 'Ambient, Black',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/logo/4/92584.png',
          uri: 'https://stream.laut.fm/ad_infinitum'),
    ];
  }
}
