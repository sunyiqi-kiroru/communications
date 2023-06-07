import 'package:communications/model/pokemon_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '/model/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

const maxNumber = 385;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ポケんモン図鑑'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageUrls = [];

  @override
  void initState() {
    imageUrls = [];
    fetchImageUrls();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        itemCount: imageUrls.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, int index) {
          return SizedBox(
            height: 100,
            child: CachedNetworkImage(
              imageUrl: imageUrls[index],
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          );
        },
      ),
    );
  }

  Future<void> fetchImageUrls() async {
    for (int index = 1; index <= maxNumber; index++) {
      Uri url = Uri.parse('http://pokeapi.co/api/v2/pokemon/$index/');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        // ライブラリ使わず
        // final imageUrl = jsonResponse['sprites']['front_default'];
        // モデルへ変換
        final imageUrl =
            PokemonModel.fromJson(jsonResponse).sprites.front_default;
        setState(() {
          imageUrls.add(imageUrl);
        });
      } else {
        throw Exception('Failed to fetch image URL');
      }
    }
  }
}
