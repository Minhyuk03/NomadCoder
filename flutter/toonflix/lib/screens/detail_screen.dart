<<<<<<< HEAD
import 'package:flutter/foundation.dart';
=======
>>>>>>> 04b2658 (flutter end)
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/widgets/episode_widget.dart';
<<<<<<< HEAD
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;

=======

class DetailScreen extends StatefulWidget {
  final String title, thumb, id;
>>>>>>> 04b2658 (flutter end)
  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episodes;
  late SharedPreferences prefs;
  bool isLiked = false;
<<<<<<< HEAD

=======
>>>>>>> 04b2658 (flutter end)
  Future initpref() async {
    prefs = await SharedPreferences.getInstance();
    final likedToons = prefs.getStringList('likedToons');
    if (likedToons != null) {
      if (likedToons.contains(widget.id) == true) {
        setState(() {
          isLiked = true;
        });
      }
    } else {
      await prefs.setStringList('likedToons', []);
    }
  }

  @override
  void initState() {
    super.initState();
<<<<<<< HEAD
    webtoon = ApiService.getToonById(widget.id);
    episodes = ApiService.getLatestEpisodesById(widget.id);
=======

    webtoon = ApiService.getToonById(widget.id);

    episodes = ApiService.getLatestEpisodesById(widget.id);

>>>>>>> 04b2658 (flutter end)
    initpref();
  }

  onHeartTap() async {
    final likedToons = prefs.getStringList('likedToons');
<<<<<<< HEAD
=======

>>>>>>> 04b2658 (flutter end)
    if (likedToons != null) {
      if (isLiked) {
        likedToons.remove(widget.id);
      } else {
        likedToons.add(widget.id);
      }
<<<<<<< HEAD
      await prefs.setStringList('likedToons', likedToons);
=======

      await prefs.setStringList('likedToons', likedToons);

>>>>>>> 04b2658 (flutter end)
      setState(() {
        isLiked = !isLiked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
<<<<<<< HEAD
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: onHeartTap,
            icon: Icon(isLiked ? Icons.favorite : Icons.favorite_outline),
          ),
        ],
        title: Text(widget.title, style: TextStyle(fontSize: 24)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
=======

      appBar: AppBar(
        elevation: 2,

        backgroundColor: Colors.white,

        foregroundColor: Colors.green,

        actions: [
          IconButton(
            onPressed: onHeartTap,

            icon: Icon(isLiked ? Icons.favorite : Icons.favorite_outline),
          ),
        ],

        title: Text(widget.title, style: TextStyle(fontSize: 24)),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),

>>>>>>> 04b2658 (flutter end)
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
<<<<<<< HEAD
                children: [
                  Hero(
                    tag: widget.id,
                    child: Container(
                      width: 250,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: Offset(10, 10),
=======

                children: [
                  Hero(
                    tag: widget.id,

                    child: Container(
                      width: 250,

                      clipBehavior: Clip.hardEdge,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),

                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,

                            offset: Offset(10, 10),

>>>>>>> 04b2658 (flutter end)
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ],
                      ),
<<<<<<< HEAD
                      child: Image.network(
                        widget.thumb,
=======

                      child: Image.network(
                        widget.thumb,

>>>>>>> 04b2658 (flutter end)
                        headers: const {
                          "User-Agent":
                              "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                        },
                      ),
                    ),
                  ),
                ],
              ),
<<<<<<< HEAD
              const SizedBox(height: 25),
              FutureBuilder(
                future: webtoon,
=======

              const SizedBox(height: 25),

              FutureBuilder(
                future: webtoon,

>>>>>>> 04b2658 (flutter end)
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
<<<<<<< HEAD
                      children: [
                        Text(
                          snapshot.data!.about,
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '${snapshot.data!.genre} / ${snapshot.data!.age}',
=======

                      children: [
                        Text(
                          snapshot.data!.about,

                          style: TextStyle(fontSize: 16),
                        ),

                        const SizedBox(height: 15),

                        Text(
                          '${snapshot.data!.genre} / ${snapshot.data!.age}',

>>>>>>> 04b2658 (flutter end)
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    );
                  }
<<<<<<< HEAD
                  return Text('...');
                },
              ),
              const SizedBox(height: 25),
              FutureBuilder(
                future: episodes,
=======

                  return Text('...');
                },
              ),

              const SizedBox(height: 25),

              FutureBuilder(
                future: episodes,

>>>>>>> 04b2658 (flutter end)
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        for (var episode in snapshot.data!)
                          Episode(episode: episode, webtoonId: widget.id),
                      ],
                    );
                  }
<<<<<<< HEAD
=======

>>>>>>> 04b2658 (flutter end)
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
