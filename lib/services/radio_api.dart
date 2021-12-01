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
          name: 'AmbientRadio',
          genre: 'Ambient',
          country: 'USA',
          imageUrl: 'https://ru0-cdn.onlineradiobox.com/img/l/2/11652.v3.png',
          uri: 'http://62.149.196.16:8888/stream'),
      RadioModel(
          name: 'Ghost Box',
          genre: 'Ambient',
          country: 'USA',
          imageUrl: 'https://ru0-cdn.onlineradiobox.com/img/l/0/41270.v4.png',
          uri: 'http://108.61.154.147:5940/;'),
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
          name: 'True Black Metal',
          genre: 'Black',
          country: 'Ukraine',
          imageUrl: 'http://trueblackmetalradio.com/content/images/tbmr.png',
          uri: 'http://trueblackmetalradio.com:666/radio'),
      RadioModel(
          name: 'Power bacK',
          genre: 'Black, Death',
          country: 'USA',
          imageUrl: 'https://www.powerbackproductions.com/images/xPower-bacL-Radio-cover-picture.png.pagespeed.ic.M0uhDvP9OY.webp',
          uri: 'https://usa6.fastcast4u.com/proxy/tmuldbnz2?mp=/1'),
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
          genre: 'Death, Thrash',
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
          genre: 'Black, Death, Doom, Grind',
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
          genre: 'Doom, Grind, Sludge',
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
          uri: 'https://adinfinitum.stream.laut.fm/ad_infinitum?t302=2021-11-23_19-15-45&uuid=f9ee833a-2c44-4e7b-8374-0e65ed84a2ca'),
      RadioModel(
          name: 'Hard & Heavy Metal Hits',
          genre: 'Classic Hits, Heavy, Power',
          country: 'Portugal',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/2/55922.v15.png',
          uri: 'https://stream.zeno.fm/6qkgp2q90feuv'),
      RadioModel(
          name: 'Metal Maximum',
          genre: 'Death, Heavy, Power, Prog',
          country: 'Italy',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/70691.v19.png',
          uri: 'https://s11.ssl-stream.com/ssl/metalmaximum?mp=/stream'),
      RadioModel(
          name: 'Hard Radio',
          genre: 'Classic Hits, Heavy',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/14819.v1.png',
          uri: 'http://144.217.29.205:80/;stream.nsv'),
      RadioModel(
          name: 'Hard Rock Heaven',
          genre: 'Classic Hits, Heavy',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/53549.v4.png',
          uri: 'http://hydra.cdnstream.com/1521_128'),
      RadioModel(
          name: 'Metal Hammer',
          genre: 'Classic Hits, Heavy',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/6/42856.v1.png',
          uri: 'https://metal-hammer.stream.laut.fm/metal-hammer'),
      RadioModel(
          name: 'Metal Station',
          genre: 'Classic Hits, Heavy',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/2/43082.v1.png',
          uri: 'https://metalstation.stream.laut.fm/metalstation'),
      RadioModel(
          name: 'Metal-FM.com',
          genre: 'Classic Hits, Heavy',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/44023.v3.png',
          uri: 'https://metal-fm-com.stream.laut.fm/metal-fm-com'),
      RadioModel(
          name: 'Metal Shop',
          genre: 'Classic Hits, Heavy',
          country: 'Canada',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/88794.v2.png',
          uri: 'https://daniel.torontocast.com:1675/stream'),
      RadioModel(
          name: 'Código Metal',
          genre: 'Death, Thrash',
          country: 'Chile',
          imageUrl: 'http://www.codigometal.cl/logoradioarriba.jpg',
          uri: 'https://streaming.viphosting.cl/8012/stream'),
      RadioModel(
          name: 'Crucial Velocity',
          genre: 'Classic Hits, Heavy',
          country: 'Canada',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/6/67646.v9.png',
          uri: 'https://streams.rpr1.de/rpr-metal-128-mp3?usid=0-0-H-M-D-20'),
      RadioModel(
          name: 'DistFM',
          genre: 'Classic Hits, Heavy',
          country: 'Sweden',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/5/22995.v9.png',
          uri: 'http://185.80.220.12/proxy/distfmsam192?mp=/stream'),
      RadioModel(
          name: 'Thrash or Die',
          genre: 'Classic Hits, Heavy, Thrash',
          country: 'Switzerland',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/57180.v4.png',
          uri: 'https://stream.laut.fm/thrashordie'),
      RadioModel(
          name: 'AGF-RADIO',
          genre: 'Death, Heavy, Thrash',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/6/42396.v1.png',
          uri: 'http://service.pop-stream.de:4000/;stream.nsv'),
      RadioModel(
          name: 'Bear Metal',
          genre: 'Power, Prog, Symphonic',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/2628.v5.png',
          uri: 'http://sc6.shoutcaststreaming.us:8004/;stream.nsv'),
      RadioModel(
          name: 'Big Hair',
          genre: 'Classic Hits',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/100353.v3.png',
          uri: 'http://192.111.140.11:8508/stream'),
      RadioModel(
          name: 'Bremen City Nights',
          genre: 'Death, Heavy, Prog',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/52190.v6.png',
          uri: 'https://bremencitynights.stream.laut.fm/bremencitynights'),
      RadioModel(
          name: 'Twilight Radio',
          genre: 'Classic Hits, Heavy, Nu',
          country: 'Russia',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/61013.v4.png',
          uri: 'http://213.141.146.133:8000/radio'),
      RadioModel(
          name: 'The ARC 97.3',
          genre: 'Heavy, Industrial, Prog',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/74583.v18.png',
          uri: 'https://streaming.live365.com/a65345'),
      RadioModel(
          name: 'Raw Sound',
          genre: 'Black, Death, Grind',
          country: 'Belarus',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/72163.v7.png',
          uri: 'http://www.rawsound.by:8080/;listen.pls'),
      RadioModel(
          name: 'Born 79',
          genre: 'Alternative, Core, Heavy, Nu',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/44654.v1.png',
          uri: 'https://born79.stream.laut.fm/born79'),
      RadioModel(
          name: 'Up the Irons',
          genre: 'Heavy, Power, Thrash',
          country: 'Austria',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/57571.v4.png',
          uri: 'https://stream.laut.fm/up_the_irons'),
      RadioModel(
          name: 'The Slaughterhouse',
          genre: 'Black, Death, Grind, Thrash',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/2/55762.v2.png',
          uri: 'http://91.121.77.158:8376/stream'),
      RadioModel(
          name: 'NWR Metal',
          genre: 'Classic Hits, Heavy, Thrash',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/70928.v4.png',
          uri: 'https://nwr-metal.stream.laut.fm/nwr-metal'),
      RadioModel(
          name: 'Heavymetalradio',
          genre: 'Heavy, Prog, Symphonic',
          country: 'Chile',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/6/77286.v7.png',
          uri: 'https://sonic.portalfoxmix.cl/8436/stream'),
      RadioModel(
          name: 'Dark Star FM',
          genre: 'Folk, Gothic, Heavy',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/1/44541.v1.png',
          uri: 'https://darkstarfm.stream.laut.fm/darkstarfm'),
      RadioModel(
          name: 'Highway Pirates',
          genre: 'Classic Hits, Heavy, Thrash',
          country: 'Netherlands',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/9/98599.v2.png',
          uri: 'https://neos.win:48858/autodj'),
      RadioModel(
          name: 'Dark Muzic',
          genre: 'Electro, Gothic, Synth',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/6/44476.v1.png',
          uri: 'https://darkmuzic.stream.laut.fm/darkmuzic'),
      RadioModel(
          name: 'Alloy Radio',
          genre: 'Heavy',
          country: 'USA',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/0/77930.v15.png',
          uri: 'https://streaming.live365.com/a34794'),
      RadioModel(
          name: 'Sinnflut',
          genre: 'Folk, Gothic, Industrial',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/5/44515.v3.png',
          uri: 'https://sinnflut.stream.laut.fm/sinnflut'),
      RadioModel(
          name: 'Medusa FM',
          genre: 'Gothic, Heavy, Industrial',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/logo/4/45574.png',
          uri: 'https://stream.laut.fm/medusafm'),
      RadioModel(
          name: 'Danger Zone BL',
          genre: 'Black, Death, Heavy, Thrash',
          country: 'Bosnia-Herzegovina',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/3/79733.v7.png',
          uri: 'http://stream.dangerzonebl.com:8000/stream'),
      RadioModel(
          name: 'Fortschritt',
          genre: 'Core, Industrial, Thrash',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/4/44974.v1.png',
          uri: 'https://fortschritt.stream.laut.fm/fortschritt'),
      RadioModel(
          name: 'Nonpop',
          genre: 'Ambient, Black, Folk, Industrial',
          country: 'Germany',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/5/55495.v2.png',
          uri: 'https://nonpop.stream.laut.fm/nonpop'),
      RadioModel(
          name: 'Metalkultur',
          genre: 'Death, Heavy, Thrash',
          country: 'Switzerland',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/logo/5/45545.png',
          uri: 'https://stream.laut.fm/radio-metalkultur'),
      RadioModel(
          name: 'Metal On: Metal Masters',
          genre: 'Classic Hits, Heavy',
          country: 'Portugal',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/7/107107.v1.png',
          uri: 'https://radiometalon.com/radio/8050/radio.mp3'),
      RadioModel(
          name: 'Metal On: Lusitania',
          genre: 'Heavy, Power',
          country: 'Portugal',
          imageUrl: 'http://ru0-cdn.onlineradiobox.com/img/l/8/107108.v1.png',
          uri: 'https://radiometalon.com/radio/8060/radio.mp3'),
    ];
  }
}
