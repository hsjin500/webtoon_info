import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../models/webtoon_episode_model.dart';

class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
    required this.titleId,
  });

  final WebtoonEpisodeModel episode;
  final String titleId;

  onButtonTap() async {
    // final url = Uri.parse("https://google.com");
    // await launchUrl(url);
    var id = titleId;
    var url =
        'https://comic.naver.com/webtoon/detail?titleId=$titleId&no=${episode.id}';
    launchUrlString(url);
    print(url);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                offset: const Offset(1, 3),
                color: Colors.black.withOpacity(0.5))
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.green.shade400,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
